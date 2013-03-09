.class Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppsAdapter.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/marvin/talkback/tutorial/AppsAdapter$AsyncLoadApps;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mIconSize:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTextViewResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "resource"
    .parameter "textViewResourceId"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 47
    iput p3, p0, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->mTextViewResourceId:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->mIconSize:I

    .line 50
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->loadAllApps()V

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private loadAllApps()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 89
    .local v0, mainIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    new-instance v1, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter$AsyncLoadApps;

    invoke-direct {v1, p0, v2}, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter$AsyncLoadApps;-><init>(Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;Lcom/google/android/marvin/talkback/tutorial/AppsAdapter$AsyncLoadApps;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/Intent;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter$AsyncLoadApps;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    return-void
.end method


# virtual methods
.method public getLabel(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "position"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 55
    .local v0, appInfo:Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x0

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 61
    .local v4, view:Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 62
    .local v0, appInfo:Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 63
    .local v2, label:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 64
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget v5, p0, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->mTextViewResourceId:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 66
    .local v3, text:Landroid/widget/TextView;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 67
    iget v5, p0, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->mIconSize:I

    iget v6, p0, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->mIconSize:I

    invoke-virtual {v1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    invoke-virtual {p0, v3, v2, v1}, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->populateView(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 71
    return-object v4
.end method

.method protected populateView(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "text"
    .parameter "label"
    .parameter "icon"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p1, v0, p3, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 85
    return-void
.end method
