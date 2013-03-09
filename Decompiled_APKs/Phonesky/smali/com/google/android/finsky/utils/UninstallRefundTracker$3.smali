.class synthetic Lcom/google/android/finsky/utils/UninstallRefundTracker$3;
.super Ljava/lang/Object;
.source "UninstallRefundTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/UninstallRefundTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 80
    invoke-static {}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->values()[Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/finsky/utils/UninstallRefundTracker$3;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/utils/UninstallRefundTracker$3;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    sget-object v1, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->SUCCESS:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
