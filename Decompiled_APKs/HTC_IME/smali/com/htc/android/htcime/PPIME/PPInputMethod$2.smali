.class synthetic Lcom/htc/android/htcime/PPIME/PPInputMethod$2;
.super Ljava/lang/Object;
.source "PPInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/PPIME/PPInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$htc$android$htcime$PPIME$PPInputMethod$WclBtnMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2298
    invoke-static {}, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->values()[Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$2;->$SwitchMap$com$htc$android$htcime$PPIME$PPInputMethod$WclBtnMode:[I

    :try_start_0
    sget-object v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$2;->$SwitchMap$com$htc$android$htcime$PPIME$PPInputMethod$WclBtnMode:[I

    sget-object v1, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->NONE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    invoke-virtual {v1}, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$2;->$SwitchMap$com$htc$android$htcime$PPIME$PPInputMethod$WclBtnMode:[I

    sget-object v1, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->DROP:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    invoke-virtual {v1}, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/htc/android/htcime/PPIME/PPInputMethod$2;->$SwitchMap$com$htc$android$htcime$PPIME$PPInputMethod$WclBtnMode:[I

    sget-object v1, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->CLOSE:Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;

    invoke-virtual {v1}, Lcom/htc/android/htcime/PPIME/PPInputMethod$WclBtnMode;->ordinal()I

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
