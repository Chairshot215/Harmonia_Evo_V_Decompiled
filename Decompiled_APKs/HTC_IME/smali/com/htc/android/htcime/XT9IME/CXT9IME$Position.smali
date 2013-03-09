.class public Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;
.super Ljava/lang/Object;
.source "CXT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/CXT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Position"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/CXT9IME;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/CXT9IME;II)V
    .locals 0
    .parameter
    .parameter "pos_x"
    .parameter "pos_y"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;->this$0:Lcom/htc/android/htcime/XT9IME/CXT9IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;->x:I

    iput p3, p0, Lcom/htc/android/htcime/XT9IME/CXT9IME$Position;->y:I

    return-void
.end method
