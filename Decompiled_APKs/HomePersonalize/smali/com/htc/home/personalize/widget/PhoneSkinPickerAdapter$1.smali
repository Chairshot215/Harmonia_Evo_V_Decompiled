.class Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$1;
.super Ljava/lang/Object;
.source "PhoneSkinPickerAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->getSkinListfromCommonControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$1;->this$0:Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 258
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$1;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "package1"
    .parameter "package2"

    .prologue
    const/4 v8, -0x1

    .line 262
    iget-object v9, p0, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter$1;->this$0:Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;

    #getter for: Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;->access$000(Lcom/htc/home/personalize/widget/PhoneSkinPickerAdapter;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 263
    .local v5, pm:Landroid/content/pm/PackageManager;
    if-nez v5, :cond_0

    .line 265
    const-string v9, "SkinPicker.SkinPickerAdapter"

    const-string v10, "invalid Package Manager"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    return v8

    .line 269
    :cond_0
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v5, p1, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 270
    .local v3, packageInfo1:Landroid/content/pm/ApplicationInfo;
    const/4 v9, 0x0

    invoke-virtual {v5, p2, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 271
    .local v4, packageInfo2:Landroid/content/pm/ApplicationInfo;
    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 272
    .local v6, strDir1:Ljava/lang/String;
    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 273
    .local v7, strDir2:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v1, file1:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v2, file2:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    goto :goto_0

    .line 277
    .end local v1           #file1:Ljava/io/File;
    .end local v2           #file2:Ljava/io/File;
    .end local v3           #packageInfo1:Landroid/content/pm/ApplicationInfo;
    .end local v4           #packageInfo2:Landroid/content/pm/ApplicationInfo;
    .end local v6           #strDir1:Ljava/lang/String;
    .end local v7           #strDir2:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
