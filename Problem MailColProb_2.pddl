(define (problem MailColProb_2)
    (:domain MailCollectorDomain)
    
    (:objects
        p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14
        person1 person2 
        m1 m2 m3 m4 m5 m6 m7 m8
        b1 b2 b3
        l1 l2
    )
        
    (:init
        ; Entities
        (point p1) (point p2) (point p3) (point p4) 
        (point p5) (point p6) (point p7) (point p8) 
        (point p9) (point p10) (point p11) (point p12) 
        (point p13) (point p14) 
        (mailman person1) (mailman person2)
        (mail m1) (mail m2) (mail m3) (mail m4) (mail m5) 
        (mail m6) (mail m7) (mail m8)
        (mailbox b1) (mailbox b2) (mailbox b3)
        (line l1) (line l2)
        
        ; Initial relation state of the problem
        ; Mailmen positioning
        (at person1 p14) (at person2 p3)
        
        ; Mail positioning
        (has_mail p1 m1) (has_mail p4 m2) (has_mail p4 m3)
        (has_mail p8 m4) (has_mail p2 m5) (has_mail p6 m6)
        (has_mail p1 m7) (has_mail p14 m8)
        
        ; Mailbox potitioning
        (has_box p3 b1) (has_box p13 b2) (has_box p14 b3)
        
        ; Path-Connected points (2-way)
        (p_connected p1 p2) (p_connected p2 p1)  
        (p_connected p2 p3) (p_connected p3 p2) 
        (p_connected p3 p4) (p_connected p4 p3) 
        (p_connected p4 p5) (p_connected p5 p4) 
        (p_connected p5 p12) (p_connected p12 p5) 
        (p_connected p2 p11) (p_connected p11 p2) 
        (p_connected p11 p6) (p_connected p6 p11) 
        (p_connected p11 p9) (p_connected p9 p11) 
        (p_connected p9 p10) (p_connected p10 p9) 
        (p_connected p6 p10) (p_connected p10 p6) 
        (p_connected p10 p8) (p_connected p8 p10) 
        (p_connected p8 p13) (p_connected p13 p8) 
        (p_connected p13 p14) (p_connected p14 p13) 
        
        ;Metro-Line-Connected points (1-way)
        (m_connected p2 p3 l1) (m_connected p3 p5 l1)
        (m_connected p5 p7 l1) (m_connected p7 p8 l1)
        (m_connected p8 p6 l1) (m_connected p6 p2 l1)
        (m_connected p3 p7 l1) 
        (m_connected p5 p7 l2) (m_connected p7 p8 l2)
        (m_connected p8 p6 l2) (m_connected p6 p7 l2) 
        
        ;Metro Stations
        (station p2) (station p3) (station p6) 
        (station p7) (station p8) 
    )
    
    ; Goal: There are no points (places) where there are mails
    ;       and none of the mailmen carry any mail.
    (:goal 
        (and 
            (not (carries person1 m1))
            (not (carries person1 m2))
            (not (carries person1 m3))
            (not (carries person1 m4))
            (not (carries person1 m5))
            (not (carries person1 m6))
            (not (carries person1 m7))
            (not (carries person1 m8))
            (not (carries person1 m1))
            (not (carries person2 m2))
            (not (carries person2 m3))
            (not (carries person2 m4))
            (not (carries person2 m5))
            (not (carries person2 m6))
            (not (carries person2 m7))
            (not (carries person2 m8))
            (not (has_mail p1 m1))
            (not (has_mail p1 m2))
            (not (has_mail p1 m3))
            (not (has_mail p1 m4))
            (not (has_mail p1 m5))
            (not (has_mail p1 m6))
            (not (has_mail p1 m7))
            (not (has_mail p1 m8))
            (not (has_mail p2 m1))
            (not (has_mail p2 m2))
            (not (has_mail p2 m3))
            (not (has_mail p2 m4))
            (not (has_mail p2 m5))
            (not (has_mail p2 m6))
            (not (has_mail p2 m7))
            (not (has_mail p2 m8))
            (not (has_mail p3 m1))
            (not (has_mail p3 m2))
            (not (has_mail p3 m3))
            (not (has_mail p3 m4))
            (not (has_mail p3 m5))
            (not (has_mail p3 m6))
            (not (has_mail p3 m7))
            (not (has_mail p3 m8))
            (not (has_mail p4 m1))
            (not (has_mail p4 m2))
            (not (has_mail p4 m3))
            (not (has_mail p4 m4))
            (not (has_mail p4 m5))
            (not (has_mail p4 m6))
            (not (has_mail p4 m7))
            (not (has_mail p4 m8))
            (not (has_mail p5 m1))
            (not (has_mail p5 m2))
            (not (has_mail p5 m3))
            (not (has_mail p5 m4))
            (not (has_mail p5 m5))
            (not (has_mail p5 m6))
            (not (has_mail p5 m7))
            (not (has_mail p5 m8))
            (not (has_mail p6 m1))
            (not (has_mail p6 m2))
            (not (has_mail p6 m3))
            (not (has_mail p6 m4))
            (not (has_mail p6 m5))
            (not (has_mail p6 m6))
            (not (has_mail p6 m7))
            (not (has_mail p6 m8))
            (not (has_mail p7 m1))
            (not (has_mail p7 m2))
            (not (has_mail p7 m3))
            (not (has_mail p7 m4))
            (not (has_mail p7 m5))
            (not (has_mail p7 m6))
            (not (has_mail p7 m7))
            (not (has_mail p7 m8))
            (not (has_mail p8 m1))
            (not (has_mail p8 m2))
            (not (has_mail p8 m3))
            (not (has_mail p8 m4))
            (not (has_mail p8 m5))
            (not (has_mail p8 m6))
            (not (has_mail p8 m7))
            (not (has_mail p8 m8))
            (not (has_mail p9 m1))
            (not (has_mail p9 m2))
            (not (has_mail p9 m3))
            (not (has_mail p9 m4))
            (not (has_mail p9 m5))
            (not (has_mail p9 m6))
            (not (has_mail p9 m7))
            (not (has_mail p9 m8))
            (not (has_mail p10 m1))
            (not (has_mail p10 m2))
            (not (has_mail p10 m3))
            (not (has_mail p10 m4))
            (not (has_mail p10 m5))
            (not (has_mail p10 m6))
            (not (has_mail p10 m7))
            (not (has_mail p10 m8))
            (not (has_mail p11 m1))
            (not (has_mail p11 m2))
            (not (has_mail p11 m3))
            (not (has_mail p11 m4))
            (not (has_mail p11 m5))
            (not (has_mail p11 m6))
            (not (has_mail p11 m7))
            (not (has_mail p11 m8))
            (not (has_mail p12 m1))
            (not (has_mail p12 m2))
            (not (has_mail p12 m3))
            (not (has_mail p12 m4))
            (not (has_mail p12 m5))
            (not (has_mail p12 m6))
            (not (has_mail p12 m7))
            (not (has_mail p12 m8))
            (not (has_mail p13 m1))
            (not (has_mail p13 m2))
            (not (has_mail p13 m3))
            (not (has_mail p13 m4))
            (not (has_mail p13 m5))
            (not (has_mail p13 m6))
            (not (has_mail p13 m7))
            (not (has_mail p13 m8))
            (not (has_mail p14 m1))
            (not (has_mail p14 m2))
            (not (has_mail p14 m3))
            (not (has_mail p14 m4))
            (not (has_mail p14 m5))
            (not (has_mail p14 m6))
            (not (has_mail p14 m7))
            (not (has_mail p14 m8))
        )
    )
)