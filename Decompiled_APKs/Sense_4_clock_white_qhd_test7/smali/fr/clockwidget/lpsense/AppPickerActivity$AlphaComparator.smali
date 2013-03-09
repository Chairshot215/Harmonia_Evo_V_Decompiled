.class Lfr/clockwidget/lpsense/AppPickerActivity$AlphaComparator;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/clockwidget/lpsense/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlphaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lfr/clockwidget/lpsense/AppPickerActivity;


# direct methods
.method constructor <init>(Lfr/clockwidget/lpsense/AppPickerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 880
    iput-object p1, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AlphaComparator;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AlphaComparator;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    .line 884
    iget-object v2, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AlphaComparator;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;
    invoke-static {v2}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$6(Lfr/clockwidget/lpsense/AppPickerActivity;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->getEntry(Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    invoke-static {v2, v3}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->access$1(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;

    move-result-object v0

    .line 885
    .local v0, ainfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    iget-object v2, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AlphaComparator;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;
    invoke-static {v2}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$6(Lfr/clockwidget/lpsense/AppPickerActivity;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->getEntry(Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    invoke-static {v2, v3}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->access$1(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;Ljava/lang/String;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;

    move-result-object v1

    .line 887
    .local v1, binfo:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->appName:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 889
    :goto_0
    return v2

    .line 888
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, v1, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->appName:Ljava/lang/CharSequence;

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 889
    :cond_3
    iget-object v2, p0, Lfr/clockwidget/lpsense/AppPickerActivity$AlphaComparator;->sCollator:Ljava/text/Collator;

    iget-object v3, v0, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2}, Lfr/clockwidget/lpsense/AppPickerActivity$AlphaComparator;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0
.end method
