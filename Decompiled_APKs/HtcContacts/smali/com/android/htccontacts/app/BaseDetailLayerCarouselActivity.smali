.class public Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;
.super Lcom/android/htccontacts/app/BaseCarouselActivity;
.source "BaseDetailLayerCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity$1;,
        Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity$BaseClosePreviousActivityHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field protected static final MENU_ARRANGE_ICONS:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "BaseDetailLayerCarouselActivity"

.field private static currentActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static mPreviousActivityRefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mClosePreviousActivityHandler:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity$BaseClosePreviousActivityHandler;

.field protected mDetailLayerObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/util/BaseDetailLayerObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsDestroyed:Z

.field private mTimeBeforeCreate:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->DEBUG:Z

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mPreviousActivityRefList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mDetailLayerObservers:Ljava/util/ArrayList;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mTimeBeforeCreate:J

    .line 182
    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mPreviousActivityRefList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public getCachedInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDetailInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemAccountArray(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, sourceIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public getItemAccountMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTimeBeforeCreate()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mTimeBeforeCreate:J

    return-wide v0
.end method

.method public isDetailInfoLoaded()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mTimeBeforeCreate:J

    .line 70
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    sget-object v0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->currentActivityRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 73
    sget-object v0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mPreviousActivityRefList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->currentActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->currentActivityRef:Ljava/lang/ref/WeakReference;

    .line 78
    new-instance v0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity$BaseClosePreviousActivityHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity$BaseClosePreviousActivityHandler;-><init>(Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mClosePreviousActivityHandler:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity$BaseClosePreviousActivityHandler;

    .line 80
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mClosePreviousActivityHandler:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity$BaseClosePreviousActivityHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 82
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 86
    const/high16 v0, 0x1

    const v1, 0x7f0a0043

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208032f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 87
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mIsDestroyed:Z

    .line 178
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onDestroy()V

    .line 179
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 98
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 95
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->enterEditMode()V

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_0
    .end packed-switch
.end method

.method public registerContactDetailLayerObserver(Lcom/android/htccontacts/util/BaseDetailLayerObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mDetailLayerObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mDetailLayerObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_0
    return-void
.end method

.method public unregisterContactDetailLayerObserver(Lcom/android/htccontacts/util/BaseDetailLayerObserver;)V
    .locals 2
    .parameter "o"

    .prologue
    .line 126
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mDetailLayerObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->mDetailLayerObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    return-void
.end method
