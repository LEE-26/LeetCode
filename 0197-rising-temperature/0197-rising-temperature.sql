# Write your MySQL query statement below

# 전날에 비해 온도가 높아진 날의 id 를 추출 

SELECT current_day.id
FROM Weather AS current_day
WHERE EXISTS(
    SELECT 1
    FROM Weather AS yesterday
    WHERE current_day.temperature > yesterday.temperature
    AND current_day.recordDate = yesterday.recordDate + INTERVAL 1 DAY
)
