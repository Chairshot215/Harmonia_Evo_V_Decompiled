.class final Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;
.super Ljava/lang/Object;
.source "CategoryItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sdcardwizard/CategoryItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ItemHolder"
.end annotation


# instance fields
.field private final icon:Lcom/htc/widget/HtcListItemColorIcon;

.field private final stamp:Lcom/htc/widget/HtcListItem2LineStamp;

.field private final text:Lcom/htc/widget/HtcListItem2LineText;


# direct methods
.method public constructor <init>(Lcom/htc/widget/HtcListItemColorIcon;Lcom/htc/widget/HtcListItem2LineText;Lcom/htc/widget/HtcListItem2LineStamp;)V
    .locals 0
    .parameter "icon"
    .parameter "text"
    .parameter "stamp"

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 79
    iput-object p2, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    .line 80
    iput-object p3, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;->stamp:Lcom/htc/widget/HtcListItem2LineStamp;

    .line 81
    return-void
.end method


# virtual methods
.method public setItem(Landroid/content/Context;Lcom/htc/sdcardwizard/CategoryItem;)V
    .locals 4
    .parameter "context"
    .parameter "item"

    .prologue
    .line 84
    if-eqz p2, :cond_1

    .line 85
    iget-object v0, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/htc/sdcardwizard/CategoryItem;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;->icon:Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v1, p2, Lcom/htc/sdcardwizard/CategoryItem;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v1, p2, Lcom/htc/sdcardwizard/CategoryItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;->text:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {p2}, Lcom/htc/sdcardwizard/CategoryItem;->getCount()I

    move-result v1

    int-to-long v1, v1

    iget-object v3, p2, Lcom/htc/sdcardwizard/CategoryItem;->ps:Lcom/htc/sdcardwizard/utils/PluralSingular;

    invoke-static {v1, v2, v3}, Lcom/htc/sdcardwizard/utils/Formatter;->count(JLcom/htc/sdcardwizard/utils/PluralSingular;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/htc/sdcardwizard/CategoryItemsAdapter$ItemHolder;->stamp:Lcom/htc/widget/HtcListItem2LineStamp;

    invoke-virtual {p2}, Lcom/htc/sdcardwizard/CategoryItem;->getSize()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/htc/sdcardwizard/utils/Formatter;->filesize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    .line 92
    :cond_1
    return-void
.end method
