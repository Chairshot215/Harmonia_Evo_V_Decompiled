.class public Lcom/android/camera/effect/EffectList;
.super Ljava/lang/Object;
.source "EffectList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/EffectList$OnEffectChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EffectList"


# instance fields
.field private m_AllEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field private final m_CameraActivity:Lcom/android/camera/HTCCamera;

.field private m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

.field private m_CurrentEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;"
        }
    .end annotation
.end field

.field private m_OnEffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/HTCCamera;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/effect/EffectBase;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    const-string v0, "cameraActivity"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cameraActivity is NULL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/camera/effect/EffectList;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private prepareApplyEffectInternal(Lcom/android/camera/effect/EffectBase;I)V
    .locals 3

    const-string v0, "EffectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare applying effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    invoke-virtual {p1, v0, p2}, Lcom/android/camera/effect/EffectBase;->prepareApply(Lcom/android/camera/effect/EffectBase;I)V

    return-void
.end method

.method private prepareCancelEffectInternal(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;I)V
    .locals 3

    const-string v0, "EffectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare canceling effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Lcom/android/camera/effect/EffectBase;->prepareApply(Lcom/android/camera/effect/EffectBase;I)V

    return-void
.end method

.method private setEffectInternal(Lcom/android/camera/effect/EffectBase;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectBase;->cancel(Lcom/android/camera/effect/EffectBase;)V

    :cond_0
    iput-object p1, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/android/camera/effect/EffectBase;->apply(Lcom/android/camera/effect/EffectBase;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getAllEffects()[Lcom/android/camera/effect/EffectBase;
    .locals 2

    iget-object v1, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/android/camera/effect/EffectBase;

    iget-object v1, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public final getCurrentEffect()Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method public final getCurrentEffectCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getEffect(I)Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method

.method public final getEffect(Ljava/lang/String;)Lcom/android/camera/effect/EffectBase;
    .locals 4

    if-nez p1, :cond_0

    const-string v2, "name"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final prepareApplyEffect(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v0, p2}, Lcom/android/camera/effect/EffectList;->prepareApplyEffectInternal(Lcom/android/camera/effect/EffectBase;I)V

    return-void
.end method

.method public final prepareApplyEffect(Ljava/lang/String;I)V
    .locals 5

    if-nez p1, :cond_0

    const-string v2, "name"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, p2}, Lcom/android/camera/effect/EffectList;->prepareApplyEffectInternal(Lcom/android/camera/effect/EffectBase;I)V

    :goto_0
    return-void

    :cond_2
    const-string v2, "EffectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find effect \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final prepareCancelEffect(ILcom/android/camera/effect/EffectBase;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/effect/EffectList;->prepareCancelEffectInternal(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;I)V

    return-void
.end method

.method public final prepareCancelEffect(Ljava/lang/String;Lcom/android/camera/effect/EffectBase;I)V
    .locals 5

    if-nez p1, :cond_0

    const-string v2, "name"

    invoke-static {v2}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name is NULL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, p2, p3}, Lcom/android/camera/effect/EffectList;->prepareCancelEffectInternal(Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;I)V

    :goto_0
    return-void

    :cond_2
    const-string v2, "EffectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find effect \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setCurrentEffect(Lcom/android/camera/effect/EffectBase;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "effect"

    invoke-static {v0}, Lcom/android/camera/debug/Debugger;->printArgumentNullLog(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "EffectList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Effect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/effect/EffectBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not in current effect list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_OnEffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/EffectList;->m_OnEffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    iget-object v1, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    invoke-interface {v0, p0, v1, p1}, Lcom/android/camera/effect/EffectList$OnEffectChangedListener;->onEffectChanged(Lcom/android/camera/effect/EffectList;Lcom/android/camera/effect/EffectBase;Lcom/android/camera/effect/EffectBase;)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/effect/EffectList;->setEffectInternal(Lcom/android/camera/effect/EffectBase;)V

    goto :goto_0
.end method

.method setOnEffectChangedListener(Lcom/android/camera/effect/EffectList$OnEffectChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectList;->m_OnEffectChangedListener:Lcom/android/camera/effect/EffectList$OnEffectChangedListener;

    return-void
.end method

.method public final updateCurrentEffects()V
    .locals 12

    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v9, "EffectList"

    const-string v10, "There is no camera thread"

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getMode()I

    move-result v7

    if-nez v7, :cond_2

    const/16 v8, 0x10

    :goto_1
    invoke-virtual {v1}, Lcom/android/camera/CameraThread;->getCameraType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string v9, "EffectList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown camera type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_3
    if-ge v6, v4, :cond_4

    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_AllEffects:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/effect/EffectBase;

    invoke-virtual {v5}, Lcom/android/camera/effect/EffectBase;->getCapabilities()I

    move-result v3

    and-int v9, v3, v8

    if-ne v9, v8, :cond_3

    and-int v9, v3, v0

    if-ne v9, v0, :cond_3

    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    const/16 v8, 0x20

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x4

    goto :goto_2

    :cond_3
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    if-ne v9, v5, :cond_1

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/camera/effect/EffectList;->setEffectInternal(Lcom/android/camera/effect/EffectBase;)V

    goto :goto_4

    :cond_4
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CurrentEffects:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/effect/EffectBase;

    invoke-direct {p0, v9}, Lcom/android/camera/effect/EffectList;->setEffectInternal(Lcom/android/camera/effect/EffectBase;)V

    :cond_5
    iget-object v9, p0, Lcom/android/camera/effect/EffectList;->m_CameraActivity:Lcom/android/camera/HTCCamera;

    invoke-virtual {v9}, Lcom/android/camera/HTCCamera;->getEventManager()Lcom/android/camera/EventManager;

    move-result-object v9

    new-instance v10, Lcom/android/camera/OneValueEvent;

    const-string v11, "EffectList.Updated"

    invoke-direct {v10, v11, p0}, Lcom/android/camera/OneValueEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Lcom/android/camera/EventManager;->raiseEvent(Lcom/android/camera/Event;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
