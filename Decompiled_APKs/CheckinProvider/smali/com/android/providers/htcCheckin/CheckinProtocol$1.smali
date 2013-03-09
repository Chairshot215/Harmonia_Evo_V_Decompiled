.class synthetic Lcom/android/providers/htcCheckin/CheckinProtocol$1;
.super Ljava/lang/Object;
.source "CheckinProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/CheckinProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$provider$htcCheckin$Properties$Tag:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 208
    invoke-static {}, Landroid/provider/htcCheckin$Properties$Tag;->values()[Landroid/provider/htcCheckin$Properties$Tag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/providers/htcCheckin/CheckinProtocol$1;->$SwitchMap$android$provider$htcCheckin$Properties$Tag:[I

    :try_start_0
    sget-object v0, Lcom/android/providers/htcCheckin/CheckinProtocol$1;->$SwitchMap$android$provider$htcCheckin$Properties$Tag:[I

    sget-object v1, Landroid/provider/htcCheckin$Properties$Tag;->DESIRED_BUILD:Landroid/provider/htcCheckin$Properties$Tag;

    invoke-virtual {v1}, Landroid/provider/htcCheckin$Properties$Tag;->ordinal()I

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
