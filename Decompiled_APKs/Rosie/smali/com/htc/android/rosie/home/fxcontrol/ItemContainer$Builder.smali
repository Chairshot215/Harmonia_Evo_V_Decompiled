.class public Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;
.super Ljava/lang/Object;
.source "ItemContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCanDrop:Z

.field private mContainerName:Ljava/lang/String;

.field private mDragName:Ljava/lang/String;

.field private mDropName:Ljava/lang/String;

.field private mItem:Lcom/htc/fusion/fx/FxScene;

.field private mScene:Lcom/htc/fusion/fx/FxScene;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mCanDrop:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mScene:Lcom/htc/fusion/fx/FxScene;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;-><init>(Lcom/htc/fusion/fx/FxScene;Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$1;)V

    .line 160
    .local v0, ic:Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mContainerName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mContainerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->setContainer(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mItem:Lcom/htc/fusion/fx/FxScene;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mItem:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->setItem(Lcom/htc/fusion/fx/FxScene;)V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mDragName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mDragName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->setDrag(Ljava/lang/String;)V

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mDropName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mDropName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->setDrop(Ljava/lang/String;)V

    .line 170
    :cond_2
    iget-boolean v1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mCanDrop:Z

    invoke-virtual {v0, v1}, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer;->setDrop(Z)V

    .line 171
    return-object v0
.end method

.method public setContainer(Ljava/lang/String;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;
    .locals 0
    .parameter "container"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mContainerName:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public setDrag(Ljava/lang/String;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;
    .locals 0
    .parameter "drag"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mDragName:Ljava/lang/String;

    .line 133
    return-object p0
.end method

.method public setDrop(Ljava/lang/String;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;
    .locals 0
    .parameter "drop"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mDropName:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public setDrop(Z)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;
    .locals 0
    .parameter "bCanDrop"

    .prologue
    .line 153
    iput-boolean p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mCanDrop:Z

    .line 154
    return-object p0
.end method

.method public setItem(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;
    .locals 1
    .parameter "item"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mContainerName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 143
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mItem:Lcom/htc/fusion/fx/FxScene;

    .line 144
    :cond_0
    return-object p0
.end method

.method public setScene(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;
    .locals 0
    .parameter "scene"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/ItemContainer$Builder;->mScene:Lcom/htc/fusion/fx/FxScene;

    .line 128
    return-object p0
.end method
