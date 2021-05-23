import os
import random
import sys
# import numpy as np
import json

def get_graph(path):
    """
    """
    graph = {'ht':set(), 'entity':{}}
    count = 0
    with open(path) as fp:
        for line in fp:
            count += 1
            if count % 100000 == 0: print('deal count:', count)
            sys.stdout.flush()
            #if count > 50000000:break
            h, r, t = line.strip().split('\t')
            if h == t: continue
            # h = int(h)
            # r = int(r)
            # t = int(t)
            key = h + '\t' + t
            key2 = t + '\t' + h
            if key not in graph['ht']:
                graph['ht'].add(key)
            if key2 not in graph['ht']:
                graph['ht'].add(key2)

            if h not in graph['entity']:
                graph['entity'][h] = set()

            graph['entity'][h].add(t)

            if t not in graph['entity']:
                graph['entity'][t] = set()
            graph['entity'][t].add(h)
    print('entity:', len(graph['entity']))
    print('ht:', len(graph['ht']))

    return graph


def get_zero_middle_vex(start, end, graph):
    """
    """
    key = start + '\t' + end
    if key in graph['ht']:
        return [key]
    return []


def get_one_middle_vex(start, end, graph, max_r=20):
    """
    """
    entity_1 = graph['entity'].get(start, set())
    entity_2 = graph['entity'].get(end, set())
    diff = list(entity_1 & entity_2)
    diff = [start + '\t' + i + '\t' + end for i in diff]
    if len(diff) > 0: random.shuffle(diff)
    return diff[:max_r]


def get_two_middle_vex(start, end, graph, max_r=20):
    """
    """
    entity_1 = graph['entity'].get(start, set())
    entity_2 = graph['entity'].get(end, set())
    result = set()
    for e1 in entity_1:
        if e1 == start:continue
        count = 0
        for e2 in entity_2:
            if e2 == end: continue
            if e1 == e2: continue
            key = e1 + "\t" + e2
            if key in graph['ht']:
                result.add(start + '\t' + e1 + "\t" + e2 + '\t' + end)
                count += 1
            if count > 5:break

    result = list(result)
    if len(result) > 0: random.shuffle(result)

    return result[:max_r]


def get_three_middle_vex(start, end, graph, max_r=20):
    """
    """
    entity_1 = graph['entity'].get(start, set())
    entity_2 = graph['entity'].get(end, set())
    result = set()
    for e1 in entity_1:
        if e1 == start:continue
        entity_3 = graph['entity'].get(e1, set())
        cur_count = 0
        for e2 in entity_2:
            if e2 == end:continue
            count = 0
            for e3 in entity_3:
                if e3 == e1:continue
                if e3 == e2:continue
                key = e3 + '\t' + e2
                if key in graph['ht']:
                    result.add(start + '\t' + e1 + '\t' + e3 + '\t' + e2 + '\t' + end)
                    count += 1
                if count > 5: break

            if count > 0: cur_count += 1
            if cur_count > 5: break

    result = list(result)
    if len(result) > max_r: random.shuffle(result)

    return result[:max_r]


def get_three_middle_vex_v2(start, end, graph, max_r=20):
    """
    """
    entity_1 = graph['entity'].get(start, set())
    entity_2 = graph['entity'].get(end, set())
    result = set()
    count = 0
    for e1 in entity_1:
        if e1 == start:continue
        entity_3 = graph['entity'].get(e1, set())
        cur_count = 0
        for e3 in entity_3:
            entity_4 = graph['entity'].get(e3, set())
            diff = entity_4 & entity_2
            if len(diff) > 0:
                diff = list(diff)[:max_r]
                cur_count += 1
            for e4 in diff:
                result.add(start + '\t' + e1 + '\t' + e3 + '\t' + e4 + '\t' + end)
            if cur_count > max_r:break

        if cur_count > 0: count += 1
        if count > max_r:break

    result = list(result)
    if len(result) > max_r: random.shuffle(result)

    return result[:max_r]


def get_four_middle_vex(start, end, graph, max_r=20):
    """
    """
    entity_1 = graph['entity'].get(start, set())
    entity_2 = graph['entity'].get(end, set())
    result = set()
    for e1 in entity_1:
        if e1 == start:continue
        entity_3 = graph['entity'].get(e1, set())
        no_count = 0
        for e2 in entity_2:
            if e2 == end: continue
            entity_4 = graph['entity'].get(e2, set())
            cur_count = 0
            for e3 in entity_3:
                if e3 == e1: continue
                count = 0
                for e4 in entity_4:
                    if e4 == e2: continue
                    if e4 == e3: continue
                    key1 = e1 + '\t' + e3
                    key2 = e3 + '\t' + e4
                    key3 = e4 + '\t' + e2
                    if key1 in graph['ht'] and key2 in graph['ht'] and key3 in graph['ht']:
                        result.add(start + '\t' + e1 + '\t' + e3 + '\t' + e4 + '\t' + e2 + '\t' + end)
                        count += 1
                    if count > 5: break
                if count > 0: cur_count += 1
                if cur_count > 5: break
            if cur_count > 0: no_count += 1
            if no_count > 5: break

    result = list(result)
    if len(result) > 0: random.shuffle(result)
    return result[:max_r]


def get_four_middle_vex_v2(start, end, graph, max_r=20):
    """
    """
    entity_1 = graph['entity'].get(start, set())
    entity_2 = graph['entity'].get(end, set())
    result = set()
    for e1 in entity_1:
        if e1 == start:continue
        entity_3 = graph['entity'].get(e1, set())
        no_count = 0
        for e2 in entity_2:
            if e2 == end: continue
            entity_4 = graph['entity'].get(e2, set())
            cur_count = 0
            for e3 in entity_3:
                if e3 == e1: continue
                count = 0
                for e4 in entity_4:
                    if e4 == e2: continue
                    if e4 == e3: continue
                    key1 = e1 + '\t' + e3
                    key2 = e3 + '\t' + e4
                    key3 = e4 + '\t' + e2
                    if key1 in graph['ht'] and key2 in graph['ht'] and key3 in graph['ht']:
                        result.add(start + '\t' + e1 + '\t' + e3 + '\t' + e4 + '\t' + e2 + '\t' + end)
                        count += 1
                    if count > 5: break
                if count > 0: cur_count += 1
                if cur_count > 5: break
            if cur_count > 0: no_count += 1
            if no_count > 5: break

    result = list(result)
    if len(result) > 0: random.shuffle(result)
    return result[:max_r]


def get_path(start, end, graph, num=3):
    """
    """

    result = get_zero_middle_vex(start, end, graph)
    if len(result) > 0:
        return result, 2
    if num == 0: return [], 2

    result = get_one_middle_vex(start, end, graph)
    if len(result) > 0:
        return result, 3
    if num == 1: return [], 3

    result = get_two_middle_vex(start, end, graph)
    if len(result) > 0:
        return result, 4
    if num == 2: return [], 4

    result = get_three_middle_vex_v2(start, end, graph)
    if len(result) > 0:
        return result, 5
    if num == 3: return [], 5

    result = get_four_middle_vex(start, end, graph)
    if len(result) > 0:
        return result, 6

    return [], 7


if __name__ == '__main__':

    path = '/home/work/biandonghai/kdd_2021/wikikg90m_kddcup2021/processed/train.tuple'
    graph = get_graph(path)
    for line in sys.stdin:
        h, r, t = line.strip().split("\t")
        start = h
        end = t
        # start = '9858432'
        # end = '25263224'
        result, num = get_path(start, end, graph)
        result = list(result)
        print(line.strip() + '\t' + json.dumps(result) + '\t' + str(len(result)) + '\t' + str(num))
        sys.stdout.flush()
        # print(result)
