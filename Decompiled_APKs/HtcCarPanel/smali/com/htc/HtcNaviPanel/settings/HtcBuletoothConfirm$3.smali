.class synthetic Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$3;
.super Ljava/lang/Object;
.source "HtcBuletoothConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$htc$HtcNaviPanel$settings$HtcBuletoothConfirm$BuletoothType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;->values()[Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$3;->$SwitchMap$com$htc$HtcNaviPanel$settings$HtcBuletoothConfirm$BuletoothType:[I

    :try_start_0
    sget-object v0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$3;->$SwitchMap$com$htc$HtcNaviPanel$settings$HtcBuletoothConfirm$BuletoothType:[I

    sget-object v1, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;->CONNECT:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;

    invoke-virtual {v1}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$3;->$SwitchMap$com$htc$HtcNaviPanel$settings$HtcBuletoothConfirm$BuletoothType:[I

    sget-object v1, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;->DISCONNECT:Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;

    invoke-virtual {v1}, Lcom/htc/HtcNaviPanel/settings/HtcBuletoothConfirm$BuletoothType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
