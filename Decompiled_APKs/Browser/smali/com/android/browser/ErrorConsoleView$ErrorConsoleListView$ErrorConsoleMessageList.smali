.class Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;
.super Landroid/widget/BaseAdapter;
.source "ErrorConsoleView.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorConsoleMessageList"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mMessages:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/ConsoleMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 240
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mMessages:Ljava/util/Vector;

    .line 241
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mInflater:Landroid/view/LayoutInflater;

    .line 243
    return-void
.end method


# virtual methods
.method public add(Landroid/webkit/ConsoleMessage;)V
    .locals 1
    .parameter "consoleMessage"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {p0}, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->notifyDataSetChanged()V

    .line 251
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 258
    invoke-virtual {p0}, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->notifyDataSetChanged()V

    .line 259
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mMessages:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 272
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 293
    iget-object v4, p0, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mMessages:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ConsoleMessage;

    .line 295
    .local v0, error:Landroid/webkit/ConsoleMessage;
    if-nez v0, :cond_0

    .line 296
    const/4 v3, 0x0

    .line 324
    :goto_0
    return-object v3

    .line 299
    :cond_0
    if-nez p2, :cond_1

    .line 300
    iget-object v4, p0, Lcom/android/browser/ErrorConsoleView$ErrorConsoleListView$ErrorConsoleMessageList;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x109000d

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 305
    .local v3, view:Landroid/view/View;
    :goto_1
    const v4, 0x1020014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 306
    .local v1, headline:Landroid/widget/TextView;
    const v4, 0x1020015

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 307
    .local v2, subText:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    invoke-virtual {v0}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    sget-object v4, Lcom/android/browser/ErrorConsoleView$3;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual {v0}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 321
    const v4, -0x333334

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 302
    .end local v1           #headline:Landroid/widget/TextView;
    .end local v2           #subText:Landroid/widget/TextView;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    move-object v3, p2

    .restart local v3       #view:Landroid/view/View;
    goto :goto_1

    .line 311
    .restart local v1       #headline:Landroid/widget/TextView;
    .restart local v2       #subText:Landroid/widget/TextView;
    :pswitch_0
    const/high16 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 315
    :pswitch_1
    const/16 v4, 0xff

    const/16 v5, 0xc0

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 318
    :pswitch_2
    const v4, -0xffff01

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method
