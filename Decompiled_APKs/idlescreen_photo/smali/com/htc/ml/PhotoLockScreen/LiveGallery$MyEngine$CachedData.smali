.class public Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;
.super Ljava/lang/Object;
.source "LiveGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CachedData"
.end annotation


# instance fields
.field public cachedBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

.field public cachedPhoDeos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/PhoDeo;",
            ">;"
        }
    .end annotation
.end field

.field public cachedmScene:Lcom/htc/fusion/fx/FxScene;

.field final synthetic this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;


# direct methods
.method public constructor <init>(Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 116
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->this$1:Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    .line 112
    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedPhoDeos:Ljava/util/List;

    .line 113
    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedmScene:Lcom/htc/fusion/fx/FxScene;

    .line 117
    return-void
.end method


# virtual methods
.method public cache(Lcom/htc/ml/PhotoLockScreen/BehindObj;Ljava/util/List;Lcom/htc/fusion/fx/FxScene;)V
    .locals 6
    .parameter "p1"
    .parameter
    .parameter "p3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/ml/PhotoLockScreen/BehindObj;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/ml/PhotoLockScreen/PhoDeo;",
            ">;",
            "Lcom/htc/fusion/fx/FxScene;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, p2:Ljava/util/List;,"Ljava/util/List<Lcom/htc/ml/PhotoLockScreen/PhoDeo;>;"
    const/4 v5, 0x0

    .line 121
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "CachedData cache."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->release()V

    .line 128
    iput-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    .line 131
    :cond_0
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    .line 133
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedPhoDeos:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 135
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedPhoDeos:Ljava/util/List;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 137
    const/4 v1, 0x0

    .local v1, nIndex:I
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedPhoDeos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, nCount:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 139
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedPhoDeos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    .line 140
    .local v2, pd:Lcom/htc/ml/PhotoLockScreen/PhoDeo;
    if-eqz v2, :cond_1

    .line 142
    invoke-virtual {v2}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->release()V

    .line 137
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v2           #pd:Lcom/htc/ml/PhotoLockScreen/PhoDeo;
    :cond_2
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedPhoDeos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 147
    iput-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedPhoDeos:Ljava/util/List;

    .line 150
    .end local v0           #nCount:I
    .end local v1           #nIndex:I
    :cond_3
    iput-object p2, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedPhoDeos:Ljava/util/List;

    .line 152
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedmScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v3, :cond_4

    .line 154
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedmScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v3, p3}, Lcom/htc/fusion/fx/FxScene;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 156
    iput-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedmScene:Lcom/htc/fusion/fx/FxScene;

    .line 159
    :cond_4
    iput-object p3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedmScene:Lcom/htc/fusion/fx/FxScene;

    .line 160
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 196
    const-string v0, "brian_LiveGallery_IdleScreen"

    const-string v1, "CachedData finalize."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 198
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->release()V

    .line 199
    return-void
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 164
    const-string v3, "brian_LiveGallery_IdleScreen"

    const-string v4, "CachedData release."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    invoke-virtual {v3}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->release()V

    .line 169
    iput-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedBehindObj:Lcom/htc/ml/PhotoLockScreen/BehindObj;

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedPhoDeos:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 174
    const/4 v1, 0x0

    .local v1, nIndex:I
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedPhoDeos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, nCount:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 176
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedPhoDeos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/ml/PhotoLockScreen/PhoDeo;

    .line 177
    .local v2, pd:Lcom/htc/ml/PhotoLockScreen/PhoDeo;
    if-eqz v2, :cond_1

    .line 179
    invoke-virtual {v2}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->release()V

    .line 174
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    .end local v2           #pd:Lcom/htc/ml/PhotoLockScreen/PhoDeo;
    :cond_2
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedPhoDeos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 184
    iput-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedPhoDeos:Ljava/util/List;

    .line 187
    .end local v0           #nCount:I
    .end local v1           #nIndex:I
    :cond_3
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedmScene:Lcom/htc/fusion/fx/FxScene;

    if-eqz v3, :cond_4

    .line 189
    iput-object v5, p0, Lcom/htc/ml/PhotoLockScreen/LiveGallery$MyEngine$CachedData;->cachedmScene:Lcom/htc/fusion/fx/FxScene;

    .line 191
    :cond_4
    return-void
.end method
