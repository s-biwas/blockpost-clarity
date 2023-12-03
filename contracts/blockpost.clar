(define-constant contract-owner (as-contract tx-sender)) ;;tx-sender = contract deployer

(define-constant price u1000000)

(define-data-var total-posts uint u0)

(define-map posts principal (string-utf8 500) )

(define-read-only (get-total-posts) 
 (var-get total-posts)
)

(define-read-only (get-post (user principal)) 
 (map-get? posts user)
)

(define-public (write-post (message  (string-utf8 500))) 
 (begin 
 (try! (stx-transfer? price tx-sender contract-owner))
 (map-set posts tx-sender message)
 
 (var-set total-posts (+ (var-get total-posts) u1))
 (ok "Success")
  )
)

