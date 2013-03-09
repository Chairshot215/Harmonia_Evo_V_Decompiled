.class public final Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;
.super Ljava/lang/Object;
.source "StyleChooser.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/fusionwidget/StyleChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ComboStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;",
        ">;"
    }
.end annotation


# static fields
.field public static final WIDGET_2:I = 0x0

.field public static final WIDGET_3:I = 0x1


# instance fields
.field private style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

.field final synthetic this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

.field type:I

.field private widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/fusionwidget/StyleChooser;Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;)V
    .locals 2
    .parameter
    .parameter "style"

    .prologue
    const/4 v1, 0x0

    .line 119
    iput-object p1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->type:I

    .line 116
    iput-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    .line 117
    iput-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    .line 120
    iput-object p2, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    .line 121
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->type:I

    .line 122
    return-void
.end method

.method constructor <init>(Lcom/htc/home/personalize/fusionwidget/StyleChooser;Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;)V
    .locals 2
    .parameter
    .parameter "widgetInfo"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 124
    iput-object p1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->type:I

    .line 116
    iput-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    .line 117
    iput-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    .line 125
    iput-object p2, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    .line 126
    iput v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->type:I

    .line 127
    return-void
.end method

.method private getView()Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    iget-object v0, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;)I
    .locals 9
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    .line 287
    const/4 v1, -0x1

    .line 288
    .local v1, BEFORE:I
    const/4 v2, 0x0

    .line 289
    .local v2, EQUAL:I
    const/4 v0, 0x1

    .line 291
    .local v0, AFTER:I
    if-ne p0, p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v6

    .line 295
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 296
    .local v5, thisName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 297
    .local v4, thatName:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 298
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v3

    .line 299
    .local v3, collator:Ljava/text/Collator;
    invoke-virtual {v3, v5, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 303
    .end local v3           #collator:Ljava/text/Collator;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getStyleIndex()I

    move-result v7

    invoke-virtual {p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getStyleIndex()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getStyleIndex()I

    move-result v6

    invoke-virtual {p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->getStyleIndex()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 306
    const/4 v6, -0x1

    goto :goto_0

    .line 308
    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    check-cast p1, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->compareTo(Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;)I

    move-result v0

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    if-nez v0, :cond_0

    .line 267
    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    invoke-interface {v0}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    iget-object v0, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->component:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public getDate()Ljava/lang/CharSequence;
    .locals 13

    .prologue
    .line 222
    const-string v7, "N/A"

    .line 223
    .local v7, ret:Ljava/lang/CharSequence;
    iget v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->type:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 224
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    invoke-virtual {v10}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getDate()Ljava/lang/CharSequence;

    move-result-object v7

    .line 255
    :cond_0
    :goto_0
    return-object v7

    .line 227
    :cond_1
    iget-object v9, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    check-cast v9, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;

    .line 230
    .local v9, wgt:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;
    :try_start_0
    sget-object v10, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v9}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 231
    .local v5, remote:Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    invoke-interface {v10}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object v7

    .line 232
    const-string v10, "rosie_widget_release_date"

    const-string v11, "string"

    invoke-virtual {v9}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 237
    .local v6, remoteId:I
    if-eqz v6, :cond_0

    .line 238
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 240
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v10, "y/M/d H:m"

    invoke-direct {v2, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 241
    .local v2, dateFormat:Ljava/text/SimpleDateFormat;
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 243
    .local v1, dateDate:Ljava/util/Date;
    iget-object v10, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->this$0:Lcom/htc/home/personalize/fusionwidget/StyleChooser;

    invoke-virtual {v10}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "date_format"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 244
    .local v8, userDateFormat:Ljava/lang/String;
    invoke-static {v8, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    goto :goto_0

    .line 246
    .end local v1           #dateDate:Ljava/util/Date;
    .end local v2           #dateFormat:Ljava/text/SimpleDateFormat;
    .end local v5           #remote:Landroid/content/res/Resources;
    .end local v6           #remoteId:I
    .end local v8           #userDateFormat:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 248
    .local v4, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 249
    .end local v4           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 251
    .local v3, e:Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 198
    const-string v3, ""

    .line 199
    .local v3, ret:Ljava/lang/CharSequence;
    iget v5, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 200
    iget-object v5, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    invoke-virtual {v5}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getDescription()Ljava/lang/CharSequence;

    move-result-object v3

    .line 218
    :cond_0
    :goto_0
    return-object v3

    .line 202
    :cond_1
    iget-object v4, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    check-cast v4, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;

    .line 203
    .local v4, wgt:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;
    const/4 v2, 0x0

    .line 205
    .local v2, remote:Landroid/content/res/Resources;
    :try_start_0
    sget-object v5, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 209
    :goto_1
    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v4}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->getProperties()Lcom/htc/home/WidgetItemProperties;

    move-result-object v1

    .line 213
    .local v1, prop:Lcom/htc/home/WidgetItemProperties;
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v4}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo1;->getStyleIndex()I

    move-result v5

    invoke-virtual {v1, v5, v2}, Lcom/htc/home/WidgetItemProperties;->getDescription(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 206
    .end local v1           #prop:Lcom/htc/home/WidgetItemProperties;
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/htc/home/personalize/fusionwidget/StyleChooser;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "collectInfo: NameNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    invoke-virtual {v0}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    invoke-interface {v0}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getId()I

    move-result v0

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 184
    const-string v0, ""

    .line 185
    .local v0, ret:Ljava/lang/CharSequence;
    iget v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 186
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    invoke-virtual {v1}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    invoke-interface {v1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    const-string v0, ""

    .line 131
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 132
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    invoke-virtual {v1}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    invoke-interface {v1}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getParentId()I
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    if-nez v0, :cond_0

    .line 260
    const/4 v0, 0x0

    .line 262
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    invoke-interface {v0}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getParentId()I

    move-result v0

    goto :goto_0
.end method

.method public getPreviewImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    invoke-interface {v0}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getPreviewImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreviewRes()I
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    invoke-virtual {v0}, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->getPreviewRes()I

    move-result v0

    goto :goto_0
.end method

.method public getSettings()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    iget-object v0, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->settings:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public getStyleIndex()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    if-nez v0, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->widgetInfo:Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;

    invoke-interface {v0}, Lcom/htc/home/personalize/widgetpicker/MyWidgetInfo;->getStyleIndex()I

    move-result v0

    goto :goto_0
.end method

.method public getStyleSceneName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lcom/htc/home/personalize/fusionwidget/StyleChooser$ComboStyle;->style:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    iget-object v0, v1, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;->view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;

    .line 169
    .local v0, view:Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;
    if-nez v0, :cond_0

    .line 170
    const/4 v1, 0x0

    .line 173
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style$ViewInfo;->scene:Ljava/lang/String;

    goto :goto_0
.end method
