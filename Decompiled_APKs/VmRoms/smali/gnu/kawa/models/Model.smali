.class public abstract Lgnu/kawa/models/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Lgnu/kawa/models/Viewable;


# instance fields
.field transient listeners:Lgnu/kawa/models/WeakListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Lgnu/kawa/models/ModelListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 17
    new-instance v0, Lgnu/kawa/models/WeakListener;

    iget-object v1, p0, Lgnu/kawa/models/Model;->listeners:Lgnu/kawa/models/WeakListener;

    invoke-direct {v0, p1, v1}, Lgnu/kawa/models/WeakListener;-><init>(Ljava/lang/Object;Lgnu/kawa/models/WeakListener;)V

    iput-object v0, p0, Lgnu/kawa/models/Model;->listeners:Lgnu/kawa/models/WeakListener;

    .line 18
    return-void
.end method

.method public addListener(Lgnu/kawa/models/WeakListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 22
    iget-object v0, p0, Lgnu/kawa/models/Model;->listeners:Lgnu/kawa/models/WeakListener;

    iput-object v0, p1, Lgnu/kawa/models/WeakListener;->next:Lgnu/kawa/models/WeakListener;

    .line 23
    iput-object p1, p0, Lgnu/kawa/models/Model;->listeners:Lgnu/kawa/models/WeakListener;

    .line 24
    return-void
.end method

.method public notifyListeners(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 28
    const/4 v2, 0x0

    .line 29
    .local v2, prev:Lgnu/kawa/models/WeakListener;
    iget-object v3, p0, Lgnu/kawa/models/Model;->listeners:Lgnu/kawa/models/WeakListener;

    .line 30
    .local v3, wlistener:Lgnu/kawa/models/WeakListener;
    :goto_0
    if-eqz v3, :cond_2

    .line 32
    invoke-virtual {v3}, Lgnu/kawa/models/WeakListener;->get()Ljava/lang/Object;

    move-result-object v0

    .line 33
    .local v0, listener:Ljava/lang/Object;
    iget-object v1, v3, Lgnu/kawa/models/WeakListener;->next:Lgnu/kawa/models/WeakListener;

    .line 34
    .local v1, next:Lgnu/kawa/models/WeakListener;
    if-nez v0, :cond_1

    .line 36
    if-eqz v2, :cond_0

    .line 37
    iput-object v1, v2, Lgnu/kawa/models/WeakListener;->next:Lgnu/kawa/models/WeakListener;

    .line 44
    :cond_0
    :goto_1
    move-object v3, v1

    .line 45
    goto :goto_0

    .line 41
    :cond_1
    move-object v2, v3

    .line 42
    invoke-virtual {v3, v0, p0, p1}, Lgnu/kawa/models/WeakListener;->update(Ljava/lang/Object;Lgnu/kawa/models/Model;Ljava/lang/Object;)V

    goto :goto_1

    .line 46
    .end local v0           #listener:Ljava/lang/Object;
    .end local v1           #next:Lgnu/kawa/models/WeakListener;
    :cond_2
    return-void
.end method
