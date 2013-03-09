.class public Lcom/htc/htccalendarwidgets/FxAgendaAdapter;
.super Lcom/htc/fusion/fx/controls/FxArrayAdapter;
.source "FxAgendaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/controls/FxArrayAdapter",
        "<",
        "Lcom/htc/htccalendarwidgets/AgendaEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final FX_CONTROL_NAME:[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "FxAgendaAdapter"


# instance fields
.field mAgendaEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/AgendaEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "textlabel.primary"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "textlabel.secondary"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dynamicimage.calendar_label"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->FX_CONTROL_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/htccalendarwidgets/AgendaEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/htccalendarwidgets/AgendaEvent;>;"
    invoke-direct {p0, p1, p2}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    .line 44
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->mContext:Landroid/content/Context;

    .line 45
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 46
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    return-void
.end method

.method private isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 99
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeAdapter(Ljava/util/Collection;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/htc/htccalendarwidgets/AgendaEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, results:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/htc/htccalendarwidgets/AgendaEvent;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 92
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/htc/htccalendarwidgets/AgendaEvent;
    .locals 1
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/AgendaEvent;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->getItem(I)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v0

    return-object v0
.end method

.method public setSyncFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 8
    .parameter "position"
    .parameter "item"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 79
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->getItem(I)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v0

    .line 56
    .local v0, ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    sget-object v6, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->FX_CONTROL_NAME:[Ljava/lang/String;

    invoke-virtual {p2, v6}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    .line 57
    .local v2, fxControlObj:[Lcom/htc/fusion/fx/FxObject;
    const/4 v6, 0x0

    aget-object v4, v2, v6

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 58
    .local v4, titleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/4 v6, 0x1

    aget-object v3, v2, v6

    check-cast v3, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 59
    .local v3, timeLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/4 v6, 0x2

    aget-object v1, v2, v6

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 61
    .local v1, eventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    .line 62
    :cond_1
    const-string v6, "FxAgendaAdapter"

    const-string v7, "titleLabel == null || timeLabel == null || eventLabel == null"

    invoke-static {v6, v7}, Lcom/htc/htccalendarwidgets/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_2
    iget-object v6, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 71
    iget-object v5, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    .line 72
    .local v5, titleString:Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    .line 73
    :cond_3
    iget-object v6, p0, Lcom/htc/htccalendarwidgets/FxAgendaAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 75
    :cond_4
    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 78
    iget-object v6, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0
.end method
