.class final Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;
.super Ljava/lang/Object;
.source "HtcWrapContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WorkerArgs"
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field public cookie:Ljava/lang/Object;

.field public defaultResource:I

.field public info:Lcom/android/internal/telephony/CallerInfo;

.field public listener:Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$OnImageLoadCompleteListener;

.field public result:Ljava/lang/Object;

.field public uri:Landroid/net/Uri;

.field public view:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/wrap/android/pim/HtcWrapContactsAsyncHelper$WorkerArgs;-><init>()V

    return-void
.end method
