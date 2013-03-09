.class public Lcom/htc/messaging/utils/MessageProvider$CommonColumns;
.super Ljava/lang/Object;
.source "MessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/messaging/utils/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonColumns"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final CONTACT_ID:Ljava/lang/String; = "contact_id"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "ct_t"

.field public static final DATE:Ljava/lang/String; = "normalized_date"

.field public static final INTERNAL_TYPE:Ljava/lang/String; = "m_type"

.field public static final IS_EVDO:Ljava/lang/String; = "is_evdo"

.field public static final LOCKED:Ljava/lang/String; = "locked"

.field public static final MSG_ID:Ljava/lang/String; = "_id"

.field public static final MSG_TYPE:Ljava/lang/String; = "transport_type"

.field public static final MSG_TYPE_IM:Ljava/lang/String; = "im"

.field public static final MSG_TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final MSG_TYPE_SMS:Ljava/lang/String; = "sms"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final READ:Ljava/lang/String; = "read"

.field public static final SUBJECT:Ljava/lang/String; = "sub"

.field public static final SUBJECT_CHARSET:Ljava/lang/String; = "sub_cs"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final UNREAD_COUNT:Ljava/lang/String; = "unread_count"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
