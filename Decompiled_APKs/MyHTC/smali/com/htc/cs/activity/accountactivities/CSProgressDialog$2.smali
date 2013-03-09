.class synthetic Lcom/htc/cs/activity/accountactivities/CSProgressDialog$2;
.super Ljava/lang/Object;
.source "CSProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CSProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$htc$cs$activity$accountactivities$CSProgressDialog$DialogAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->values()[Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$2;->$SwitchMap$com$htc$cs$activity$accountactivities$CSProgressDialog$DialogAction:[I

    :try_start_0
    sget-object v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$2;->$SwitchMap$com$htc$cs$activity$accountactivities$CSProgressDialog$DialogAction:[I

    sget-object v1, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->CREATE_ACCOUNT:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$2;->$SwitchMap$com$htc$cs$activity$accountactivities$CSProgressDialog$DialogAction:[I

    sget-object v1, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->DELETE_ACCOUNT:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$2;->$SwitchMap$com$htc$cs$activity$accountactivities$CSProgressDialog$DialogAction:[I

    sget-object v1, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->AUTO_DISCOVER:Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;

    invoke-virtual {v1}, Lcom/htc/cs/activity/accountactivities/CSProgressDialog$DialogAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
