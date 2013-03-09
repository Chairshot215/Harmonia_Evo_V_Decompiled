.class Lcom/android/htccontacts/ui/QuickContactWindow$ProfileAction;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Lcom/android/htccontacts/ui/QuickContactWindow$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/QuickContactWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileAction"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLookupUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .parameter "context"
    .parameter "lookupUri"

    .prologue
    .line 1285
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1286
    iput-object p1, p0, Lcom/android/htccontacts/ui/QuickContactWindow$ProfileAction;->mContext:Landroid/content/Context;

    .line 1287
    iput-object p2, p0, Lcom/android/htccontacts/ui/QuickContactWindow$ProfileAction;->mLookupUri:Landroid/net/Uri;

    .line 1288
    return-void
.end method


# virtual methods
.method public collapseWith(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 1329
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1281
    check-cast p1, Lcom/android/htccontacts/ui/QuickContactWindow$Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow$ProfileAction;->collapseWith(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    return v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1297
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1324
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFallbackIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow$ProfileAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeader()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1292
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/htccontacts/ui/QuickContactWindow$ProfileAction;->mLookupUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1313
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1314
    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1302
    const-string v0, "vnd.android.cursor.item/contact"

    return-object v0
.end method

.method public isPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1319
    const/4 v0, 0x0

    return-object v0
.end method

.method public shouldCollapseWith(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 1334
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1281
    check-cast p1, Lcom/android/htccontacts/ui/QuickContactWindow$Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow$ProfileAction;->shouldCollapseWith(Lcom/android/htccontacts/ui/QuickContactWindow$Action;)Z

    move-result v0

    return v0
.end method
