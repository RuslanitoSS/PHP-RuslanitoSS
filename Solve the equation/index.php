<?php

function solveEquation($equation)
{

    $equation = str_replace(' ', '', $equation);
    $leftSide = explode('=', $equation)[0];
    $rightSide = explode('=', $equation)[1];

    $operators = ['+', '-', '/', '*'];


    if (strpos($leftSide, 'X') !== false) {
        //left
        $leftXPos = strpos($leftSide, 'X');
        foreach ($operators as $operator) {
            if (strpos($leftSide, $operator) !== false) {
                $opPos = strpos($leftSide, $operator);
                // X - 100 = 200
                // 100 - X = 200
                if ($leftXPos != 0) {
                    $leftNumber = intval(substr($leftSide, 0, $opPos));
                    $xIsBegining = false;
                } else {
                    $leftNumber = intval(substr($leftSide, $opPos + 1, strlen($leftSide)));
                    $xIsBegining = true;
                }
                break;
            }
        }

        switch ($operator) {
            case '+':
                $x = $rightSide - $leftNumber;
                break;
            case '-':
                if ($xIsBegining) {
                    $x = $rightSide - $leftNumber;
                    break;
                } else {
                    $x = -1 * ($rightSide - $leftNumber);
                    break;
                }
            case '/':
                $x = $rightSide * $leftNumber;
                break;
                // X/8=6
                // 8 / X = 
            case '*':
                $x = $rightSide / $leftNumber;
                break;
        }

        return $x;
    } else {
        //right
        $rightXPos = strpos($rightSide, 'X');
        foreach ($operators as $operator) {
            if (strpos($rightSide, $operator) !== false) {
                $opPos = strpos($rightSide, $operator);
                // X - 100 = 200
                // 100 - X = 200
                if ($rightXPos != 0) {
                    $rightNumber = intval(substr($rightSide, 0, $opPos));
                    $xIsBegining = false;
                } else {
                    $rightNumber = intval(substr($rightSide, $opPos + 1, strlen($rightSide)));
                    $xIsBegining = true;
                }
                break;
            }
        }

        switch ($operator) {
            case '+':
                $x = $leftSide - $rightNumber;
                break;
            case '-':
                if ($xIsBegining) {
                    $x = ($leftSide - $rightNumber);
                    break;
                } else {
                    $x = -1 * ($leftSide - $rightNumber);
                    break;
                }
            case '/':
                $x = $leftSide * $rightNumber;
                break;
            case '*':
                $x = $leftSide / $rightNumber;
                break;
        }

        return $x;
    }

    return 'X is not in the thing';
}
$equations = [
    'X + 3 = 7',
    '27 - X = 17', 
    '6/X = 2', //-
    'X/8=6',
    '22 * X = 220',
    'X * 7 = 49',
    '10 + X = 33',
    'X + 67 = 129',
    '4 * X = 36',
    'X * 9 = 56'
];


for ($i = 0; $i < count($equations); $i++) {
    echo 'X = ' . solveEquation($equations[$i]) . '<br>';
}
