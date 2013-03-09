.class public Lcom/htc/launcher/AddAdapter$ListItem;
.super Ljava/lang/Object;
.source "AddAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/AddAdapter;
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

.field final synthetic this$0:Lcom/htc/launcher/AddAdapter;

.field public widgetItem:Lcom/htc/launcher/WidgetItem;


# direct methods
.method public constructor <init>(Lcom/htc/launcher/AddAdapter;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;I)V
    .locals 1
    .parameter
    .parameter "pm"
    .parameter "resolveInfo"
    .parameter "actionTag"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/htc/launcher/AddAdapter$ListItem;->this$0:Lcom/htc/launcher/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    .line 335
    invoke-virtual {p3, p2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 336
    iget-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 339
    :cond_0
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->packageName:Ljava/lang/String;

    .line 340
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->className:Ljava/lang/String;

    .line 343
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {p2, v0}, Lcom/htc/launcher/ResourceUtil;->getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 344
    iget v0, p3, Landroid/content/pm/ResolveInfo;->priority:I

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 345
    iput p4, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    .line 346
    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;III)V
    .locals 2
    .parameter
    .parameter "res"
    .parameter "textResourceId"
    .parameter "imageResourceId"
    .parameter "actionTag"

    .prologue
    const/4 v1, -0x1

    .line 231
    iput-object p1, p0, Lcom/htc/launcher/AddAdapter$ListItem;->this$0:Lcom/htc/launcher/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 224
    iput v1, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    .line 232
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 233
    if-eq p4, v1, :cond_0

    .line 234
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 238
    :goto_0
    iput p5, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    .line 239
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIII)V
    .locals 2
    .parameter
    .parameter "res"
    .parameter "textResourceId"
    .parameter "imageResourceId"
    .parameter "actionTag"
    .parameter "nextAdapter"

    .prologue
    const/4 v1, -0x1

    .line 241
    iput-object p1, p0, Lcom/htc/launcher/AddAdapter$ListItem;->this$0:Lcom/htc/launcher/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 224
    iput v1, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    .line 242
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 243
    if-eq p4, v1, :cond_0

    .line 244
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 248
    :goto_0
    iput p5, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    .line 249
    iput p6, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    .line 250
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;IIIILandroid/content/Intent;Ljava/lang/String;)V
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
    .line 309
    iput-object p1, p0, Lcom/htc/launcher/AddAdapter$ListItem;->this$0:Lcom/htc/launcher/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    .line 310
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 311
    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 312
    iput p5, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    .line 313
    iput-object p7, p0, Lcom/htc/launcher/AddAdapter$ListItem;->intent:Landroid/content/Intent;

    .line 314
    iput p6, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    .line 315
    iput-object p8, p0, Lcom/htc/launcher/AddAdapter$ListItem;->summaryChangedAction:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .parameter
    .parameter "res"
    .parameter "str"
    .parameter "icon"
    .parameter "actionTag"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/htc/launcher/AddAdapter$ListItem;->this$0:Lcom/htc/launcher/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    .line 254
    iput-object p3, p0, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 255
    iput-object p4, p0, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 256
    iput p5, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    .line 257
    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/AddAdapter;Landroid/content/res/Resources;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .parameter
    .parameter "res"
    .parameter "str"
    .parameter "icon"
    .parameter "actionTag"
    .parameter "nextAdapter"

    .prologue
    .line 259
    iput-object p1, p0, Lcom/htc/launcher/AddAdapter$ListItem;->this$0:Lcom/htc/launcher/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    .line 260
    iput-object p3, p0, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 261
    if-eqz p4, :cond_0

    .line 262
    iput-object p4, p0, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 266
    :goto_0
    iput p5, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    .line 267
    iput p6, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    .line 268
    return-void

    .line 264
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/launcher/AddAdapter;Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;II)V
    .locals 5
    .parameter
    .parameter "item"
    .parameter "actionTag"
    .parameter "priority"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/htc/launcher/AddAdapter$ListItem;->this$0:Lcom/htc/launcher/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/16 v4, 0xc8

    iput v4, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 224
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    .line 359
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    .line 293
    invoke-virtual {p2}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 294
    const/4 v0, 0x0

    .line 296
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p2}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, packageName:Ljava/lang/String;
    #getter for: Lcom/htc/launcher/AddAdapter;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/htc/launcher/AddAdapter;->access$000(Lcom/htc/launcher/AddAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 298
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {p2}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getPreviewRes()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 302
    .end local v2           #packageName:Ljava/lang/String;
    .end local v3           #res:Landroid/content/res/Resources;
    :goto_0
    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 303
    iget-object v4, p2, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->settings:Landroid/content/ComponentName;

    iput-object v4, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mComponent:Landroid/content/ComponentName;

    .line 304
    iget-object v4, p2, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    iget-object v4, v4, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->scene:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/launcher/AddAdapter$ListItem;->summary:Ljava/lang/String;

    .line 305
    iput p3, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    .line 306
    iput p4, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 307
    return-void

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/launcher/AddAdapter;Lcom/htc/android/rosie/widget/WidgetProvider$Info;II)V
    .locals 1
    .parameter
    .parameter "item"
    .parameter "actionTag"
    .parameter "priority"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/htc/launcher/AddAdapter$ListItem;->this$0:Lcom/htc/launcher/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    .line 285
    iget-object v0, p2, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->label:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 286
    iget-object v0, p2, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 287
    iget-object v0, p2, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mComponent:Landroid/content/ComponentName;

    .line 288
    iput p3, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    .line 289
    iput p4, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 290
    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/AddAdapter;Lcom/htc/launcher/ApplicationInfo;I)V
    .locals 2
    .parameter
    .parameter "appInfo"
    .parameter "actionTag"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/htc/launcher/AddAdapter$ListItem;->this$0:Lcom/htc/launcher/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    .line 321
    iget-object v0, p2, Lcom/htc/launcher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 322
    iget-object v0, p2, Lcom/htc/launcher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mComponent:Landroid/content/ComponentName;

    .line 323
    iget-object v0, p2, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p2, Lcom/htc/launcher/ApplicationInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 329
    :goto_0
    iget v0, p2, Lcom/htc/launcher/ApplicationInfo;->priority:I

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 330
    iput p3, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    .line 331
    return-void

    .line 326
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 327
    invoke-static {}, Lcom/htc/launcher/AddAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(224):Program icon is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/htc/launcher/AddAdapter;Ljava/lang/CharSequence;II)V
    .locals 1
    .parameter
    .parameter "textResource"
    .parameter "actionTag"
    .parameter "priority"

    .prologue
    .line 270
    iput-object p1, p0, Lcom/htc/launcher/AddAdapter$ListItem;->this$0:Lcom/htc/launcher/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    .line 271
    iput-object p2, p0, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 273
    iput p3, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    .line 274
    iput p4, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 275
    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/AddAdapter;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;II)V
    .locals 1
    .parameter
    .parameter "textResource"
    .parameter "icon"
    .parameter "actionTag"
    .parameter "priority"

    .prologue
    .line 277
    iput-object p1, p0, Lcom/htc/launcher/AddAdapter$ListItem;->this$0:Lcom/htc/launcher/AddAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mNextAdapter:I

    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    .line 278
    iput-object p2, p0, Lcom/htc/launcher/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    .line 279
    iput-object p3, p0, Lcom/htc/launcher/AddAdapter$ListItem;->image:Landroid/graphics/drawable/Drawable;

    .line 280
    iput p4, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    .line 281
    iput p5, p0, Lcom/htc/launcher/AddAdapter$ListItem;->priority:I

    .line 282
    return-void
.end method


# virtual methods
.method public isPersonalizeItem()Z
    .locals 2

    .prologue
    .line 356
    iget v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0x68

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

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
    .line 349
    iget v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->actionTag:I

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
    .line 362
    iput-boolean p1, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    .line 363
    return-void
.end method

.method public shouldDrawOnThis()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-boolean v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    if-eqz v0, :cond_0

    .line 369
    :cond_0
    return v1
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 2
    .parameter "listitem"

    .prologue
    const/4 v1, 0x1

    .line 373
    if-nez p1, :cond_0

    move v0, v1

    .line 383
    .end local p1
    :goto_0
    return v0

    .line 375
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/htc/widget/HtcListItemSeparable;

    if-nez v0, :cond_1

    move v0, v1

    .line 376
    goto :goto_0

    .line 378
    :cond_1
    iget-boolean v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/htc/launcher/AddAdapter$ListItem;

    iget-boolean v0, v0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    if-nez v0, :cond_4

    check-cast p1, Lcom/htc/launcher/AddAdapter$ListItem;

    .end local p1
    iget-boolean v0, p1, Lcom/htc/launcher/AddAdapter$ListItem;->mIsSeperator:Z

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    .line 380
    goto :goto_0

    .line 383
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
