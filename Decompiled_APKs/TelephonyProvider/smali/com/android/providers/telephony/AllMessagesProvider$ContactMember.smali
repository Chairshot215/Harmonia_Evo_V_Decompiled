.class Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;
.super Ljava/lang/Object;
.source "AllMessagesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/AllMessagesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactMember"
.end annotation


# instance fields
.field htcThreadId:J

.field threadId:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2332
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/telephony/AllMessagesProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2332
    invoke-direct {p0}, Lcom/android/providers/telephony/AllMessagesProvider$ContactMember;-><init>()V

    return-void
.end method
