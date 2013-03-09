.class public Lgnu/kawa/models/WeakListener;
.super Ljava/lang/ref/WeakReference;
.source "WeakListener.java"


# instance fields
.field next:Lgnu/kawa/models/WeakListener;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter "referent"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lgnu/kawa/models/WeakListener;)V
    .locals 0
    .parameter "referent"
    .parameter "next"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p2, p0, Lgnu/kawa/models/WeakListener;->next:Lgnu/kawa/models/WeakListener;

    .line 15
    return-void
.end method


# virtual methods
.method public update(Ljava/lang/Object;Lgnu/kawa/models/Model;Ljava/lang/Object;)V
    .locals 0
    .parameter "view"
    .parameter "model"
    .parameter "key"

    .prologue
    .line 20
    check-cast p1, Lgnu/kawa/models/ModelListener;

    .end local p1
    invoke-interface {p1, p2, p3}, Lgnu/kawa/models/ModelListener;->modelUpdated(Lgnu/kawa/models/Model;Ljava/lang/Object;)V

    .line 21
    return-void
.end method
