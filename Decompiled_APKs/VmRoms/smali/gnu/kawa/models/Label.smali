.class public Lgnu/kawa/models/Label;
.super Lgnu/kawa/models/Model;
.source "Label.java"

# interfaces
.implements Lgnu/kawa/models/Viewable;
.implements Ljava/io/Serializable;


# instance fields
.field text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/kawa/models/Model;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 16
    invoke-direct {p0}, Lgnu/kawa/models/Model;-><init>()V

    .line 17
    iput-object p1, p0, Lgnu/kawa/models/Label;->text:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lgnu/kawa/models/Label;->text:Ljava/lang/String;

    return-object v0
.end method

.method public makeView(Lgnu/kawa/models/Display;Ljava/lang/Object;)V
    .locals 0
    .parameter "display"
    .parameter "where"

    .prologue
    .line 22
    invoke-virtual {p1, p0, p2}, Lgnu/kawa/models/Display;->addLabel(Lgnu/kawa/models/Label;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 32
    iput-object p1, p0, Lgnu/kawa/models/Label;->text:Ljava/lang/String;

    .line 33
    const-string v0, "text"

    invoke-virtual {p0, v0}, Lgnu/kawa/models/Label;->notifyListeners(Ljava/lang/String;)V

    .line 34
    return-void
.end method
