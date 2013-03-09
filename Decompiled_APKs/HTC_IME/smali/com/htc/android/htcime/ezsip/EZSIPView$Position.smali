.class public Lcom/htc/android/htcime/ezsip/EZSIPView$Position;
.super Ljava/lang/Object;
.source "EZSIPView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/EZSIPView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Position"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/EZSIPView;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/ezsip/EZSIPView;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->this$0:Lcom/htc/android/htcime/ezsip/EZSIPView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method set(II)Lcom/htc/android/htcime/ezsip/EZSIPView$Position;
    .locals 0
    .parameter "posx"
    .parameter "posy"

    .prologue
    .line 612
    iput p1, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->x:I

    .line 613
    iput p2, p0, Lcom/htc/android/htcime/ezsip/EZSIPView$Position;->y:I

    .line 614
    return-object p0
.end method
