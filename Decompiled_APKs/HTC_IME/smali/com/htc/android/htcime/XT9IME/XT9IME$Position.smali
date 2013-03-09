.class public Lcom/htc/android/htcime/XT9IME/XT9IME$Position;
.super Ljava/lang/Object;
.source "XT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Position"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME;II)V
    .locals 2
    .parameter
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    const/4 v1, -0x1

    .line 190
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/XT9IME;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iput p2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;->x:I

    .line 193
    iput p3, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;->y:I

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;->x:I

    .line 196
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$Position;->y:I

    goto :goto_0
.end method
