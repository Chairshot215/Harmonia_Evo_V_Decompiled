.class public Lcom/htc/htccalendarwidgets/FxTodayAdapter;
.super Lcom/htc/fusion/fx/controls/FxArrayAdapter;
.source "FxTodayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccalendarwidgets/FxTodayAdapter$1;,
        Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;,
        Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/controls/FxArrayAdapter",
        "<",
        "Lcom/htc/htccalendarwidgets/AgendaEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FxTodayAdapter"

.field private static final MSG_ADAPTER_BASE:I = 0x1000

.field private static final MSG_ADAPTER_LOAD_IMAGE:I = 0x1000

.field private static final MSG_ADAPTER_LOAD_IMAGE_EVENT:I = 0x1001

.field private static final MSG_ADAPTER_UI_BASE:I = 0x2000

.field private static final MSG_ADAPTER_UI_UPDATE_IMAGE:I = 0x2000


# instance fields
.field eventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

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

.field private mDataHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;

.field private mUiHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;

.field timeLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field titleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
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
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/htccalendarwidgets/AgendaEvent;>;"
    const/4 v4, 0x0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/htc/fusion/fx/controls/FxArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 53
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mDataHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;

    .line 54
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mUiHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;

    .line 55
    iput-object v4, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mContext:Landroid/content/Context;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    .line 137
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mContext:Landroid/content/Context;

    .line 138
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 139
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 141
    const-string v1, "FxTodayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mObjects size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mObjects:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mDataHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;

    if-nez v1, :cond_0

    .line 144
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AgendaAdapterImageDownloadHandler"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 145
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 146
    new-instance v1, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;-><init>(Lcom/htc/htccalendarwidgets/FxTodayAdapter;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mDataHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;

    .line 149
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_0
    new-instance v1, Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;

    invoke-direct {v1, p0, v4}, Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;-><init>(Lcom/htc/htccalendarwidgets/FxTodayAdapter;Lcom/htc/htccalendarwidgets/FxTodayAdapter$1;)V

    iput-object v1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mUiHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/htc/htccalendarwidgets/FxTodayAdapter;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->updateUI(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/htccalendarwidgets/FxTodayAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/htccalendarwidgets/FxTodayAdapter;)Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mUiHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;

    return-object v0
.end method

.method private isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 262
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v0

    .line 264
    :cond_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateUI(Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, e:Lcom/htc/htccalendarwidgets/AgendaEvent;
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 130
    check-cast v0, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 131
    :cond_0
    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->photoView_:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->photo_:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    return-void
.end method


# virtual methods
.method public changeAdapter(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/AgendaEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/AgendaEvent;>;"
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 250
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 251
    .local v0, d:Lcom/htc/htccalendarwidgets/AgendaEvent;
    if-eqz v0, :cond_0

    .line 252
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    .end local v0           #d:Lcom/htc/htccalendarwidgets/AgendaEvent;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 258
    :cond_2
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->notifyDataSetChanged()V

    .line 259
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mAgendaEventList:Ljava/util/ArrayList;

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
    .line 242
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mAgendaEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccalendarwidgets/AgendaEvent;

    .line 244
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 44
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->getItem(I)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mDataHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mDataHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;->removeMessages(I)V

    .line 155
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mDataHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;

    const/16 v2, 0x1001

    invoke-virtual {v1, v2}, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;->removeMessages(I)V

    .line 156
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mDataHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;

    invoke-virtual {v1}, Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 157
    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 159
    const/4 v0, 0x0

    .line 161
    :cond_0
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mDataHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$DataHandler;

    .line 164
    .end local v0           #looper:Landroid/os/Looper;
    :cond_1
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mUiHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;

    if-eqz v1, :cond_2

    .line 165
    iput-object v3, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mUiHandler:Lcom/htc/htccalendarwidgets/FxTodayAdapter$UIHandler;

    .line 166
    :cond_2
    return-void
.end method

.method public setFxListItemData(ILcom/htc/fusion/fx/controls/FxListItem;)V
    .locals 5
    .parameter "position"
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 168
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->getItem(I)Lcom/htc/htccalendarwidgets/AgendaEvent;

    move-result-object v0

    .line 174
    .local v0, ev:Lcom/htc/htccalendarwidgets/AgendaEvent;
    const-string v2, "textlabel.primary"

    invoke-virtual {p2, v2}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->titleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 175
    const-string v2, "textlabel.secondary"

    invoke-virtual {p2, v2}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->timeLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 176
    const-string v2, "dynamicimage.calendar_label"

    invoke-virtual {p2, v2}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->eventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 178
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->titleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 179
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->timeLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 180
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->eventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 185
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->eventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v3, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->bitmap_:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 221
    iget-object v1, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    .line 222
    .local v1, titleString:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 223
    :cond_1
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    :cond_2
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->titleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->timeLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v3, v0, Lcom/htc/htccalendarwidgets/AgendaEvent;->date_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->titleLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 231
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->timeLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 232
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/FxTodayAdapter;->eventLabel:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 234
    const-string v2, "FxTodayAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add item:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
