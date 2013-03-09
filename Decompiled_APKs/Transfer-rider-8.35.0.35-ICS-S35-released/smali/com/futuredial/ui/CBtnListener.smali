.class Lcom/futuredial/ui/CBtnListener;
.super Ljava/lang/Object;
.source "CBtnListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field logTAG:Ljava/lang/String;

.field m_responseClick:Ljava/lang/Boolean;

.field m_targetWindowClassName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "targetWindowClassName"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/ui/CBtnListener;->m_targetWindowClassName:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/futuredial/ui/CBtnListener;->m_responseClick:Ljava/lang/Boolean;

    .line 11
    const-string v0, "[CBtnListener]"

    iput-object v0, p0, Lcom/futuredial/ui/CBtnListener;->logTAG:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Lcom/futuredial/ui/CBtnListener;->m_targetWindowClassName:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private declared-synchronized BtnClick()V
    .locals 2

    .prologue
    .line 28
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/futuredial/ui/CBtnListener;->logTAG:Ljava/lang/String;

    const-string v1, "click <|?  ?|>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {p0}, Lcom/futuredial/ui/CBtnListener;->additional_op()V

    .line 30
    iget-object v0, p0, Lcom/futuredial/ui/CBtnListener;->m_responseClick:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/futuredial/ui/CBtnListener;->logTAG:Ljava/lang/String;

    const-string v1, "skip pre-ordered view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :goto_0
    monitor-exit p0

    return-void

    .line 35
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/futuredial/ui/CBtnListener;->ViewChange()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method ViewChange()V
    .locals 6

    .prologue
    .line 41
    const/4 v2, 0x0

    .line 43
    .local v2, targetView:Lcom/futuredial/ui/ViewController;
    :try_start_0
    iget-object v4, p0, Lcom/futuredial/ui/CBtnListener;->m_targetWindowClassName:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 44
    .local v3, targetWindowClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/futuredial/ui/ViewController;

    move-object v2, v0

    .line 46
    iget-object v4, p0, Lcom/futuredial/ui/CBtnListener;->logTAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v2}, Lcom/futuredial/ui/ViewController;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v3           #targetWindowClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method additional_op()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/futuredial/ui/CBtnListener;->BtnClick()V

    .line 25
    return-void
.end method
