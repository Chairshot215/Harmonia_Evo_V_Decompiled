.class interface abstract Lcom/android/providers/contacts/ContactAggregator$AggregationQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AggregationQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x3

.field public static final ACCOUNT_TYPE:I = 0x2

.field public static final CONTACT_ID:I = 0x1

.field public static final DATA_SET:I = 0x4

.field public static final SQL:Ljava/lang/String; = "SELECT _id,contact_id, account_type,account_name, data_set FROM raw_contacts WHERE _id IN("

.field public static final _ID:I
