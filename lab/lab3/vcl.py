from search import Problem


def is_valid(state):
    lupStanga, capraStanga, varzaStanga, om, lupDreapta, capraDreapta, varzaDreapta = state
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
        actions = []
        if state[3] == S:
            moveState = (0, state[1], state[2], state[3], state[4], state[5], state[6])
            if is_valid(moveState):
                actions.append(newState)
        return actions

    def state(self,as):
        