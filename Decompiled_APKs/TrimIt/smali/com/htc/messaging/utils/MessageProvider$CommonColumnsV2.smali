.class public final Lcom/htc/messaging/utils/MessageProvider$CommonColumnsV2;
.super Lcom/htc/messaging/utils/MessageProvider$CommonColumns;
.source "MessageProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/messaging/utils/MessageProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommonColumnsV2"
.end annotation


# static fields
.field public static final HTC_THREAD_ID:Ljava/lang/String; = "htcthread_id"

.field public static final IS_EVDO:Ljava/lang/String; = "is_evdo"

.field public static final IS_PRIVATE:Ljava/lang/String; = "is_private"

.field public static final IS_URGENT:Ljava/lang/String; = "is_urgent"

.field public static final MSG_TYPE_VVM:Ljava/lang/String; = "vvm"

.field public static final PLAY_TIME:Ljava/lang/String; = "ptime"

.field public static final VVM_ID:Ljava/lang/String; = "vvm_id"

.field public static final VVM_TYPE:Ljava/lang/String; = "vvm_type"

.field public static final VVM_TYPE_FAX:I = 0x1

.field public static final VVM_TYPE_OTHER:I = 0x3

.field public static final VVM_TYPE_SYSTEM:I = 0x2

.field public static final VVM_TYPE_VM:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/messaging/utils/MessageProvider$CommonColumns;-><init>()V

    return-void
.end method
