.class public Lgnu/kawa/models/Button;
.super Lgnu/kawa/models/Model;
.source "Button.java"


# instance fields
.field action:Ljava/lang/Object;

.field background:Ljava/awt/Color;

.field disabled:Z

.field foreground:Ljava/awt/Color;

.field text:Ljava/lang/String;

.field width:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lgnu/kawa/models/Model;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgnu/kawa/models/Button;->action:Ljava/lang/Object;

    return-object v0
.end method

.method public getBackground()Ljava/awt/Color;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lgnu/kawa/models/Button;->background:Ljava/awt/Color;

    return-object v0
.end method

.method public getForeground()Ljava/awt/Color;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lgnu/kawa/models/Button;->foreground:Ljava/awt/Color;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lgnu/kawa/models/Button;->text:Ljava/lang/String;

    return-object v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lgnu/kawa/models/Button;->disabled:Z

    return v0
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 0
    .parameter "display"
    .parameter "where"

    .prologue
    .line 18
    invoke-virtual {p1, p0, p2}, Lgnu/kawa/models/Display;->addButton(Lgnu/kawa/models/Button;Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public setAction(Ljava/lang/Object;)V
    .locals 0
    .parameter "action"

    .prologue
    .line 32
    iput-object p1, p0, Lgnu/kawa/models/Button;->action:Ljava/lang/Object;

    return-void
.end method

.method public setBackground(Ljava/awt/Color;)V
    .locals 1
    .parameter "bg"

    .prologue
    .line 44
    iput-object p1, p0, Lgnu/kawa/models/Button;->background:Ljava/awt/Color;

    .line 45
    const-string v0, "background"

    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->notifyListeners(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public setDisabled(Z)V
    .locals 0
    .parameter "disabled"

    .prologue
    .line 22
    iput-boolean p1, p0, Lgnu/kawa/models/Button;->disabled:Z

    return-void
.end method

.method public setForeground(Ljava/awt/Color;)V
    .locals 1
    .parameter "fg"

    .prologue
    .line 37
    iput-object p1, p0, Lgnu/kawa/models/Button;->foreground:Ljava/awt/Color;

    .line 38
    const-string v0, "foreground"

    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->notifyListeners(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 27
    iput-object p1, p0, Lgnu/kawa/models/Button;->text:Ljava/lang/String;

    .line 28
    const-string v0, "text"

    invoke-virtual {p0, v0}, Lgnu/kawa/models/Button;->notifyListeners(Ljava/lang/String;)V

    .line 29
    return-void
.end method
