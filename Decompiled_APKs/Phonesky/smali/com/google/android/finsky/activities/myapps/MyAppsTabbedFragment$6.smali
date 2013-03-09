.class synthetic Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$6;
.super Ljava/lang/Object;
.source "MyAppsTabbedFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
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
    .line 590
    invoke-static {}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->values()[Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$6;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$6;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    sget-object v1, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->SUCCESS:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$6;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    sget-object v1, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->CANNOT_REFUND:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$6;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    sget-object v1, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->BAD_REQUEST:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$6;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    sget-object v1, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->NETWORK_ERROR:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
