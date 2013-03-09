.class public abstract Lcom/android/mms/ui/Presenter;
.super Ljava/lang/Object;
.source "Presenter.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mModel:Lcom/android/mms/model/Model;

.field protected mView:Lcom/android/mms/ui/ViewInterface;

.field protected final mViewHeight:I

.field protected final mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    .line 38
    invoke-interface {p2}, Lcom/android/mms/ui/ViewInterface;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/Presenter;->mViewWidth:I

    .line 39
    invoke-interface {p2}, Lcom/android/mms/ui/ViewInterface;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/Presenter;->mViewHeight:I

    .line 41
    iput-object p3, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    .line 42
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    invoke-virtual {v0, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    invoke-virtual {v0, p0}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 63
    return-void
.end method

.method public getModel()Lcom/android/mms/model/Model;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    return-object v0
.end method

.method public getView()Lcom/android/mms/ui/ViewInterface;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    return-object v0
.end method

.method public abstract present()V
.end method

.method public abstract setPresent()V
.end method

.method public setView(Lcom/android/mms/ui/ViewInterface;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    .line 51
    return-void
.end method
