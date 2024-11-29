ERD first draft

# Identify all Entities

. User
. Property
. Review
. Booking
. Message
. Payment

# Define all relationships

. User to Review: one to many (User:user_id->Review:user_id)
. User to Property: one to Many (User:user_id->Property:host_id)
. User to Booking: one to Many (User:user_id->Booking:host_id)
. User to Message: one to Many (User:user_id->Message:sender_id)
. User to Message: one to Many (User:user_id->Message:recipient_id)
. Property to Review: one to Many(Property:property_id->Review:property-id)
. Property to Booking: one to Many(Property:property_id->Booking:property-id)
. Booking to Payment: one to many (Booking:booking_id->Payment:booking_id)

# Create ERD

ERD created
