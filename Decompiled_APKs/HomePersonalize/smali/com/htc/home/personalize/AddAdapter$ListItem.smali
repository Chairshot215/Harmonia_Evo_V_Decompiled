.class public Lcom/htc/home/personalize/AddAdapter$ListItem;
.super Ljava/lang/Object;
.source "AddAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/AddAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItem"
.end annotation


# instance fields
.field public GadgetId:I

.field public final actionTag:I

.field public className:Ljava/lang/String;

.field public final image:Landroid/graphics/drawable/Drawable;

.field public intent:Landroid/content/Intent;

.field public mComponent:Landroid/content/ComponentName;

.field private mIsSeperator:Z

.field public mNextAdapter:I

.field public packageName:Ljava/lang/String;

.field public priority:I

.field public summary:Ljava/lang/String;

.field public summaryChangedAction:Ljava/lang/String;

.field public text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/htc/home/personalize/AddAdapter;

.field public widgetItem:Lcom/htc/home/personalize/WidgetItem;


# direct methods
.method public constructor <init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;I)V
    .locals 1
    .parameter
    .parameter "pm"
    .parameter "resolveInfo"
    .parameter "actionTag"

    .prologue
    .line 358
    iput-object p1, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->this$0:Lcom/htc/home/personalize/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    .line 359
    invoke-virtual {p3, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 360
    iget-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 363
    :cond_0
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->packageName:Ljava/lang/String;

    .line 364
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->className:Ljava/lang/String;

    .line 367
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {p2, v0}, Lcom/htc/home/personalize/util/ResourceUtil;->getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 368
    iget v0, p3, Landroid/content/pm/ResolveInfo;->priority:I

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 369
    iput p4, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    .line 370
    return-void
.end method

.method public constructor <init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;III)V
    .locals 2
    .parameter
    .parameter "res"
    .parameter "textResourceId"
    .parameter "imageResourceId"
    .parameter "actionTag"

    .prologue
    const/4 v1, -0x1

    .line 245
    iput-object p1, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->this$0:Lcom/htc/home/personalize/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 238
    iput v1, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    .line 246
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 247
    if-eq p4, v1, :cond_0

    .line 248
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 252
    :goto_0
    iput p5, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    .line 253
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIII)V
    .locals 2
    .parameter
    .parameter "res"
    .parameter "textResourceId"
    .parameter "imageResourceId"
    .parameter "actionTag"
    .parameter "nextAdapter"

    .prologue
    const/4 v1, -0x1

    .line 255
    iput-object p1, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->this$0:Lcom/htc/home/personalize/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 238
    iput v1, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    .line 256
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 257
    if-eq p4, v1, :cond_0

    .line 258
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 262
    :goto_0
    iput p5, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    .line 263
    iput p6, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 264
    return-void

    .line 260
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "res"
    .parameter "text"
    .parameter "icon"
    .parameter "actionTag"
    .parameter "nextAdapter"
    .parameter "intent"
    .parameter "summaryChangedAction"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->this$0:Lcom/htc/home/personalize/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    .line 324
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 325
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 326
    iput p5, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    .line 327
    iput-object p7, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 328
    iput p6, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 329
    iput-object p8, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public constructor <init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;IIIILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "res"
    .parameter "text"
    .parameter "icon"
    .parameter "actionTag"
    .parameter "nextAdapter"
    .parameter "summaryChangedAction"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->this$0:Lcom/htc/home/personalize/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    .line 332
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 333
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 334
    iput p5, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 336
    iput p6, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 337
    iput-object p7, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    .line 338
    return-void
.end method

.method public constructor <init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter
    .parameter "res"
    .parameter "str"
    .parameter "icon"
    .parameter "actionTag"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->this$0:Lcom/htc/home/personalize/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    .line 268
    iput-object p3, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 269
    iput-object p4, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 270
    iput p5, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    .line 271
    return-void
.end method

.method public constructor <init>(Lcom/htc/home/personalize/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .parameter
    .parameter "res"
    .parameter "str"
    .parameter "icon"
    .parameter "actionTag"
    .parameter "nextAdapter"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->this$0:Lcom/htc/home/personalize/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    .line 274
    iput-object p3, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 275
    if-eqz p4, :cond_0

    .line 276
    iput-object p4, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 280
    :goto_0
    iput p5, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    .line 281
    iput p6, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 282
    return-void

    .line 278
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/home/personalize/AddAdapter;Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;II)V
    .locals 5
    .parameter
    .parameter "item"
    .parameter "actionTag"
    .parameter "priority"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->this$0:Lcom/htc/home/personalize/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/16 v4, 0xc8

    iput v4, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 238
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 383
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    .line 307
    invoke-virtual {p2}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 308
    const/4 v0, 0x0

    .line 310
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p2}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, packageName:Ljava/lang/String;
    #getter for: Lcom/htc/home/personalize/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/htc/home/personalize/AddAdapter;->access$000(Lcom/htc/home/personalize/AddAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 312
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {p2}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getPreviewRes()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 316
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 317
    iget-object v4, p2, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->settings:Landroid/content/ComponentName;

    iput-object v4, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mComponent:Landroid/content/ComponentName;

    .line 318
    iget-object v4, p2, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget-object v4, v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->scene:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->summary:Ljava/lang/String;

    .line 319
    iput p3, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    .line 320
    iput p4, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 321
    return-void

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/home/personalize/AddAdapter;Lcom/htc/android/rosie/widget/WidgetProvider$Info;II)V
    .locals 1
    .parameter
    .parameter "item"
    .parameter "actionTag"
    .parameter "priority"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->this$0:Lcom/htc/home/personalize/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    .line 299
    iget-object v0, p2, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->label:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 300
    iget-object v0, p2, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 301
    iget-object v0, p2, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mComponent:Landroid/content/ComponentName;

    .line 302
    iput p3, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    .line 303
    iput p4, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 304
    return-void
.end method

.method public constructor <init>(Lcom/htc/home/personalize/AddAdapter;Ljava/lang/CharSequence;II)V
    .locals 1
    .parameter
    .parameter "textResource"
    .parameter "actionTag"
    .parameter "priority"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->this$0:Lcom/htc/home/personalize/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    .line 285
    iput-object p2, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 287
    iput p3, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    .line 288
    iput p4, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 289
    return-void
.end method

.method public constructor <init>(Lcom/htc/home/personalize/AddAdapter;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .parameter
    .parameter "textResource"
    .parameter "icon"
    .parameter "actionTag"
    .parameter "priority"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->this$0:Lcom/htc/home/personalize/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mNextAdapter:I

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    .line 292
    iput-object p2, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 293
    iput-object p3, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 294
    iput p4, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    .line 295
    iput p5, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    .line 296
    return-void
.end method


# virtual methods
.method public isPersonalizeItem()Z
    .locals 2

    .prologue
    .line 380
    iget v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0x69

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWidget()Z
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSeperator(Z)V
    .locals 0
    .parameter "isSeperator"

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    .line 387
    return-void
.end method

.method public shouldDrawOnThis()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    iget-boolean v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    if-eqz v0, :cond_0

    .line 393
    :cond_0
    return v1
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 2
    .parameter "listitem"

    .prologue
    const/4 v1, 0x1

    .line 397
    if-nez p1, :cond_0

    move v0, v1

    .line 407
    .end local p1
    :goto_0
    return v0

    .line 399
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/htc/widget/HtcListItemSeparable;

    if-nez v0, :cond_1

    move v0, v1

    .line 400
    goto :goto_0

    .line 402
    :cond_1
    iget-boolean v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/htc/home/personalize/AddAdapter$ListItem;

    iget-boolean v0, v0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    if-nez v0, :cond_4

    check-cast p1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    .end local p1
    iget-boolean v0, p1, Lcom/htc/home/personalize/AddAdapter$ListItem;->mIsSeperator:Z

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    .line 404
    goto :goto_0

    .line 407
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
