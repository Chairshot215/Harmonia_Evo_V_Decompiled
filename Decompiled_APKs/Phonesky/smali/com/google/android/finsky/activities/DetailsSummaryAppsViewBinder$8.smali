.class synthetic Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;
.super Ljava/lang/Object;
.source "DetailsSummaryAppsViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$android$finsky$receivers$Installer$InstallerState:[I

.field static final synthetic $SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 422
    invoke-static {}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->values()[Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    sget-object v1, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->SUCCESS:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    sget-object v1, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->CANNOT_REFUND:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    sget-object v1, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->BAD_REQUEST:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$utils$AppSupport$RefundResult:[I

    sget-object v1, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->NETWORK_ERROR:Lcom/google/android/finsky/utils/AppSupport$RefundResult;

    invoke-virtual {v1}, Lcom/google/android/finsky/utils/AppSupport$RefundResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 138
    :goto_3
    invoke-static {}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->values()[Lcom/google/android/finsky/receivers/Installer$InstallerState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$receivers$Installer$InstallerState:[I

    :try_start_4
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$receivers$Installer$InstallerState:[I

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->INSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    invoke-virtual {v1}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$receivers$Installer$InstallerState:[I

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->UNINSTALLING:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    invoke-virtual {v1}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$8;->$SwitchMap$com$google$android$finsky$receivers$Installer$InstallerState:[I

    sget-object v1, Lcom/google/android/finsky/receivers/Installer$InstallerState;->NOT_TRACKED:Lcom/google/android/finsky/receivers/Installer$InstallerState;

    invoke-virtual {v1}, Lcom/google/android/finsky/receivers/Installer$InstallerState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    .line 422
    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
