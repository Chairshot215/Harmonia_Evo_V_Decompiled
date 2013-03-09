.class public Lcom/htc/widget/profile/debug/HtcDebuger;
.super Ljava/lang/Object;
.source "HtcDebuger.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final isDebugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/htc/widget/profile/debug/HtcDebuger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/profile/debug/HtcDebuger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Lcom/htc/fusion/fx/FxScene;)V
    .locals 2
    .parameter "scene"

    .prologue
    .line 22
    if-eqz p0, :cond_0

    .line 23
    const-string v0, ""

    invoke-virtual {p0}, Lcom/htc/fusion/fx/FxScene;->getChildIterator()Lcom/htc/fusion/fx/FxObject$ChildIterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/widget/profile/debug/HtcDebuger;->dump(Ljava/lang/String;Lcom/htc/fusion/fx/FxObject$ChildIterator;)V

    .line 27
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v0, "The parameter scene is null."

    invoke-static {v0}, Lcom/htc/widget/profile/debug/HtcDebuger;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static dump(Ljava/lang/String;Lcom/htc/fusion/fx/FxObject$ChildIterator;)V
    .locals 3
    .parameter "indent"
    .parameter "itr"

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/htc/fusion/fx/FxObject$ChildIterator;->goToBeginning()V

    :goto_0
    invoke-virtual {p1}, Lcom/htc/fusion/fx/FxObject$ChildIterator;->isEnd()Z

    move-result v1

    if-nez v1, :cond_1

    .line 33
    invoke-virtual {p1}, Lcom/htc/fusion/fx/FxObject$ChildIterator;->get()Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 34
    .local v0, obj:Lcom/htc/fusion/fx/FxObject;
    const-string v1, "--------------------"

    invoke-static {p0, v1}, Lcom/htc/widget/profile/debug/HtcDebuger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCanonicalName(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/widget/profile/debug/HtcDebuger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getName(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/widget/profile/debug/HtcDebuger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChildCount(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxObject;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/widget/profile/debug/HtcDebuger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxObject;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxObject;->getChildIterator()Lcom/htc/fusion/fx/FxObject$ChildIterator;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/widget/profile/debug/HtcDebuger;->dump(Ljava/lang/String;Lcom/htc/fusion/fx/FxObject$ChildIterator;)V

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/htc/fusion/fx/FxObject$ChildIterator;->next()V

    goto/16 :goto_0

    .line 44
    .end local v0           #obj:Lcom/htc/fusion/fx/FxObject;
    :cond_1
    const-string v1, "--------------------"

    invoke-static {p0, v1}, Lcom/htc/widget/profile/debug/HtcDebuger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 53
    sget-object v0, Lcom/htc/widget/profile/debug/HtcDebuger;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "indent"
    .parameter "msg"

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/widget/profile/debug/HtcDebuger;->log(Ljava/lang/String;)V

    .line 50
    return-void
.end method
