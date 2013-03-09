.class Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;
.super Ljava/lang/Thread;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/clockwidget/lpsense/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResourceLoaderThread"
.end annotation


# static fields
.field static final MSG_PKG_SIZE:I = 0x8


# instance fields
.field volatile abort:Z

.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfr/clockwidget/lpsense/AppPickerActivity;


# direct methods
.method constructor <init>(Lfr/clockwidget/lpsense/AppPickerActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->abort:Z

    return-void
.end method


# virtual methods
.method loadAllResources(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iput-object p1, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->mAppList:Ljava/util/List;

    .line 289
    invoke-virtual {p0}, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->start()V

    .line 290
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    .line 294
    iget-object v12, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->mAppList:Ljava/util/List;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->mAppList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    .local v4, imax:I
    if-lez v4, :cond_1

    .line 295
    iget-object v12, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->mAppList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 296
    .local v11, size:I
    div-int/lit8 v10, v11, 0x8

    .line 297
    .local v10, numMsgs:I
    mul-int/lit8 v12, v10, 0x8

    if-le v11, v12, :cond_0

    .line 298
    add-int/lit8 v10, v10, 0x1

    .line 300
    :cond_0
    const/4 v2, 0x0

    .line 301
    .local v2, endi:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    if-lt v5, v11, :cond_2

    .line 322
    iget-object v12, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$3(Lfr/clockwidget/lpsense/AppPickerActivity;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 323
    .local v1, doneMsg:Landroid/os/Message;
    iget-object v12, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$3(Lfr/clockwidget/lpsense/AppPickerActivity;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 325
    .local v7, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    const/4 v12, 0x1

    sub-int v3, v4, v12

    .local v3, i:I
    :goto_1
    if-gez v3, :cond_6

    .line 332
    iget-object v12, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$3(Lfr/clockwidget/lpsense/AppPickerActivity;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 333
    .local v9, msg:Landroid/os/Message;
    iput-object v7, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 334
    iget-object v12, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$3(Lfr/clockwidget/lpsense/AppPickerActivity;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 336
    .end local v1           #doneMsg:Landroid/os/Message;
    .end local v2           #endi:I
    .end local v3           #i:I
    .end local v4           #imax:I
    .end local v5           #j:I
    .end local v7           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #numMsgs:I
    .end local v11           #size:I
    :cond_1
    return-void

    .line 302
    .restart local v2       #endi:I
    .restart local v4       #imax:I
    .restart local v5       #j:I
    .restart local v10       #numMsgs:I
    .restart local v11       #size:I
    :cond_2
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 303
    .local v8, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;>;"
    add-int/lit8 v2, v2, 0x8

    .line 304
    if-le v2, v11, :cond_3

    .line 305
    move v2, v11

    .line 307
    :cond_3
    move v3, v5

    .restart local v3       #i:I
    :goto_2
    if-lt v3, v2, :cond_5

    .line 318
    :cond_4
    iget-object v12, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$3(Lfr/clockwidget/lpsense/AppPickerActivity;)Landroid/os/Handler;

    move-result-object v12

    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 319
    .restart local v9       #msg:Landroid/os/Message;
    iput-object v8, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 320
    iget-object v12, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$3(Lfr/clockwidget/lpsense/AppPickerActivity;)Landroid/os/Handler;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    add-int/lit8 v5, v5, 0x8

    goto :goto_0

    .line 308
    .end local v9           #msg:Landroid/os/Message;
    :cond_5
    iget-boolean v12, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->abort:Z

    if-nez v12, :cond_4

    .line 312
    iget-object v12, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->mAppList:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 313
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    new-instance v6, Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;

    invoke-direct {v6}, Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;-><init>()V

    .line 314
    .local v6, label:Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;
    iget-object v12, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v12}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$13(Lfr/clockwidget/lpsense/AppPickerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v6, Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;->appName:Ljava/lang/CharSequence;

    .line 315
    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 326
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v6           #label:Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;
    .end local v8           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;>;"
    .restart local v1       #doneMsg:Landroid/os/Message;
    .restart local v7       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    :cond_6
    iget-boolean v12, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->abort:Z

    if-nez v12, :cond_1

    .line 329
    iget-object v12, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->mAppList:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 330
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v13, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v13}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$13(Lfr/clockwidget/lpsense/AppPickerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_1
.end method

.method public setAbort()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/clockwidget/lpsense/AppPickerActivity$ResourceLoaderThread;->abort:Z

    .line 286
    return-void
.end method
