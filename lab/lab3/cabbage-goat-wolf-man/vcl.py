from search import *


def is_valid(state):
    lupStanga, capraStanga, varzaStanga, om, lupDreapta, capraDreapta, varzaDreapta = state
    if((lupStanga == capraStanga == 1 and om == 'STANGA') or (capraStanga == varzaStanga == 1 and om == 'DREAPTA')
            or (capraStanga == varzaStanga == 1 and om == 'DREAPTA') or (lupDreapta == capraDreapta == 1 and om == 'STANGA')
            or (varzaDreapta == capraDreapta == 1 and om == 'STANGA')):
                return False
    return True


class VCL(Problem):
    def result(self, state, action):
        """The result of going to a neighbor is just that neighbor."""
        return action

    def value(self, state):
        pass

    def __init__(self, initial, goal):
        self.goal = goal
        self.initial = initial
        Problem.__init__(self, self.initial, self.goal)

    def __repr__(self):
        return "< State (%s, %s) >" % (self.initial, self.goal)

    def goal_test(self, state):
        return state == self.goal

    def actions(self, currentState):
        state = currentState
        if state[3] == 'STANGA':
            moveState = (0, state[1], state[2], state[3], state[4], state[5], state[6])
            if is_valid(moveState):
                state.append(moveState)

        return state




def main():
    problema_vcl = VCL((1, 1, 1, 'STANGA', 0, 0, 0), (0, 0, 0, 'DREAPTA', 1, 1, 1))
    path = breadth_first_tree_search(problema_vcl).solution()
