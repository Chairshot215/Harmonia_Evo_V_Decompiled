.class Lcom/htc/android/htcime/ezsip/common/AccentWindow$1;
.super Landroid/widget/LinearLayout;
.source "AccentWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ezsip/common/AccentWindow;->showAccentLetters(Landroid/view/View;Lcom/htc/android/htcime/ezsip/Keyboard$Key;ILandroid/view/MotionEvent;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/common/AccentWindow;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ezsip/common/AccentWindow;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow$1;->this$0:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 199
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow$1;->this$0:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    #calls: Lcom/htc/android/htcime/ezsip/common/AccentWindow;->setChanged()V
    invoke-static {v0}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->access$000(Lcom/htc/android/htcime/ezsip/common/AccentWindow;)V

    .line 200
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/common/AccentWindow$1;->this$0:Lcom/htc/android/htcime/ezsip/common/AccentWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/common/AccentWindow;->notifyObservers()V

    .line 201
    return-void
.end method
