.class public Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;
.super Landroid/content/res/Resources;
.source "OperatorTabManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/OperatorTabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OperatorTabResources"
.end annotation


# static fields
.field static final ENTRY_NAME_ON_ICON:Ljava/lang/String; = "on_icon_"

.field static final ENTRY_NAME_OVERLAY_ICON:Ljava/lang/String; = "overlay_icon_"

.field static final ENTRY_NAME_REST_ICON:Ljava/lang/String; = "rest_icon_"

.field static final ENTRY_NAME_TITLE:Ljava/lang/String; = "title_"

.field private static final ID_ON_ICON:I = -0x66

.field private static final ID_OVERLAY_ICON:I = -0x67

.field private static final ID_REST_ICON:I = -0x65

.field private static final ID_TITLE:I = -0x64

.field private static final MAJOR_NB:I = -0x1f1

.field private static final MAJOR_SCALE:I = 0xf4240

.field private static final MINOR_SCALE:I = 0x3e8

.field static final TYPE_DRAWABLE:Ljava/lang/String; = "drawable"

.field static final TYPE_STRING:Ljava/lang/String; = "string"


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/OperatorTabManager;


# direct methods
.method private constructor <init>(Lcom/htc/launcher/OperatorTabManager;)V
    .locals 3
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    .line 342
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 343
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/launcher/OperatorTabManager;Lcom/htc/launcher/OperatorTabManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;-><init>(Lcom/htc/launcher/OperatorTabManager;)V

    return-void
.end method

.method private doGetString(I)Ljava/lang/String;
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0xf4240

    .line 479
    const/4 v3, 0x0

    .line 480
    .local v3, ret:Ljava/lang/String;
    const/4 v1, -0x1

    .line 481
    .local v1, minorNb:I
    div-int v4, p1, v6

    const/16 v5, -0x1f1

    if-ne v4, v5, :cond_2

    rem-int/lit16 v4, p1, 0x3e8

    const/16 v5, -0x64

    if-ne v4, v5, :cond_2

    .line 484
    rem-int v4, p1, v6

    div-int/lit16 v1, v4, 0x3e8

    .line 485
    iget-object v4, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->operatorTabMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/htc/launcher/OperatorTabManager;->access$100(Lcom/htc/launcher/OperatorTabManager;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/OperatorTabCore;

    .line 486
    .local v2, operatorTab:Lcom/htc/launcher/OperatorTabCore;
    if-eqz v2, :cond_1

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, locale:Ljava/util/Locale;
    iget-object v4, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 490
    iget-object v4, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v0, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 492
    :cond_0
    invoke-virtual {v2, v0}, Lcom/htc/launcher/OperatorTabCore;->getLabel(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 493
    if-nez v3, :cond_1

    .line 495
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/launcher/OperatorTabCore;->getLabel(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 499
    .end local v0           #locale:Ljava/util/Locale;
    :cond_1
    if-nez v3, :cond_2

    .line 500
    const-string v4, "OperatorTabManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doGetString: return empty string. id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v4, ""

    .line 505
    .end local v2           #operatorTab:Lcom/htc/launcher/OperatorTabCore;
    :goto_0
    return-object v4

    .line 504
    :cond_2
    const-string v4, "OperatorTabManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OperatorTabResources.doGetString: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " minorNb="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 505
    goto :goto_0
.end method

.method private encodeResourceEntryName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "name"
    .parameter "minorNb"

    .prologue
    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 736
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!z"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 740
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    goto :goto_0
.end method

.method public getBoolean(I)Z
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 745
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!y"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 749
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public getColor(I)I
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 754
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!x"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 758
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 763
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!w"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 767
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 2

    .prologue
    .line 772
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!v"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 776
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 2

    .prologue
    .line 781
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!u"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 785
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_0
.end method

.method public getDimension(I)F
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 800
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!s"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 804
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0
.end method

.method public getDimensionPixelOffset(I)I
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 809
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!r"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 813
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDimensionPixelSize(I)I
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 818
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!q"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 822
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .prologue
    .line 827
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!p"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 831
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    goto :goto_0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const v7, 0xf4240

    .line 397
    const/4 v2, 0x0

    .line 398
    .local v2, path:Ljava/io/File;
    const/4 v0, -0x1

    .line 399
    .local v0, minorNb:I
    div-int v5, p1, v7

    const/16 v6, -0x1f1

    if-ne v5, v6, :cond_1

    .line 402
    rem-int v5, p1, v7

    div-int/lit16 v0, v5, 0x3e8

    .line 403
    iget-object v5, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->operatorTabMap:Ljava/util/Map;
    invoke-static {v5}, Lcom/htc/launcher/OperatorTabManager;->access$100(Lcom/htc/launcher/OperatorTabManager;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/launcher/OperatorTabCore;

    .line 404
    .local v1, operatorTab:Lcom/htc/launcher/OperatorTabCore;
    if-eqz v1, :cond_0

    .line 406
    rem-int/lit16 v5, p1, 0x3e8

    packed-switch v5, :pswitch_data_0

    .line 419
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 420
    const-string v5, "OperatorTabManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDrawable: return null. id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 445
    .end local v1           #operatorTab:Lcom/htc/launcher/OperatorTabCore;
    :goto_1
    return-object v3

    .line 408
    .restart local v1       #operatorTab:Lcom/htc/launcher/OperatorTabCore;
    :pswitch_0
    invoke-virtual {v1}, Lcom/htc/launcher/OperatorTabCore;->getRestIconPath()Ljava/io/File;

    move-result-object v2

    .line 409
    goto :goto_0

    .line 411
    :pswitch_1
    invoke-virtual {v1}, Lcom/htc/launcher/OperatorTabCore;->getOnIconPath()Ljava/io/File;

    move-result-object v2

    .line 412
    goto :goto_0

    .line 414
    :pswitch_2
    invoke-virtual {v1}, Lcom/htc/launcher/OperatorTabCore;->getOverlayIconPath()Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 424
    .end local v1           #operatorTab:Lcom/htc/launcher/OperatorTabCore;
    :cond_1
    const-string v5, "OperatorTabManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OperatorTabResources.getDrawable: id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " path(abs)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " minorNb="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    if-eqz v2, :cond_4

    .line 426
    iget-object v4, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 427
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 428
    .local v3, ret:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v4, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->res:Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;
    invoke-static {v4}, Lcom/htc/launcher/OperatorTabManager;->access$300(Lcom/htc/launcher/OperatorTabManager;)Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto :goto_1

    .line 424
    .end local v3           #ret:Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 432
    :cond_3
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 440
    :cond_4
    iget-object v4, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 441
    iget-object v4, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 443
    .local v3, ret:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 445
    .end local v3           #ret:Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_1

    .line 406
    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFraction(III)F
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 836
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!o"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 840
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    goto :goto_0
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "name"
    .parameter "type"
    .parameter "packageName"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const v7, -0x1d9f9e40

    .line 551
    const/4 v3, 0x0

    .line 552
    .local v3, tmp:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 553
    .local v0, i:I
    if-eq v5, v0, :cond_0

    .line 554
    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 555
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 557
    :cond_0
    if-eqz v3, :cond_1

    .line 558
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 559
    if-eq v5, v0, :cond_3

    .line 560
    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 561
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 574
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 575
    .local v2, ret:I
    const/4 v1, -0x1

    .line 576
    .local v1, minorNb:I
    iget-object v4, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 578
    const-string v4, "title_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "string"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 579
    const-string v4, "title_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 580
    mul-int/lit16 v4, v1, 0x3e8

    add-int/2addr v4, v7

    add-int/lit8 v2, v4, -0x64

    .line 595
    :cond_2
    :goto_1
    const-string v4, "OperatorTabManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OperatorTabResources.getIdentifier: name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " minorNb="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    if-eqz v2, :cond_7

    .line 604
    .end local v2           #ret:I
    :goto_2
    return v2

    .line 563
    .end local v1           #minorNb:I
    :cond_3
    const-string v4, "OperatorTabManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OperatorTabResources.getIdentifier: invalid parameters. name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    .restart local v1       #minorNb:I
    .restart local v2       #ret:I
    :cond_4
    const-string v4, "rest_icon_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "drawable"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 583
    const-string v4, "rest_icon_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 584
    mul-int/lit16 v4, v1, 0x3e8

    add-int/2addr v4, v7

    add-int/lit8 v2, v4, -0x65

    goto/16 :goto_1

    .line 586
    :cond_5
    const-string v4, "on_icon_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "drawable"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 587
    const-string v4, "on_icon_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 588
    mul-int/lit16 v4, v1, 0x3e8

    add-int/2addr v4, v7

    add-int/lit8 v2, v4, -0x66

    goto/16 :goto_1

    .line 590
    :cond_6
    const-string v4, "overlay_icon_"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "drawable"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 591
    const-string v4, "overlay_icon_"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 592
    mul-int/lit16 v4, v1, 0x3e8

    add-int/2addr v4, v7

    add-int/lit8 v2, v4, -0x67

    goto/16 :goto_1

    .line 601
    :cond_7
    iget-object v4, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 602
    iget-object v4, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2

    .line 604
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_2
.end method

.method public getIntArray(I)[I
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 845
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!n"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 849
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getInteger(I)I
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 854
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!m"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 858
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLabelResId(Lcom/htc/launcher/OperatorTab;)I
    .locals 3
    .parameter "tab"

    .prologue
    .line 713
    const-string v0, "title_"

    invoke-virtual {p1}, Lcom/htc/launcher/OperatorTab;->getMinorNb()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->encodeResourceEntryName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "string"

    iget-object v2, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 863
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!l"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 867
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    goto :goto_0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 872
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!k"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 874
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;

    move-result-object v0

    .line 876
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getMovie(I)Landroid/graphics/Movie;

    move-result-object v0

    goto :goto_0
.end method

.method public getOnIconResId(Lcom/htc/launcher/OperatorTab;)I
    .locals 3
    .parameter "tab"

    .prologue
    .line 721
    const-string v0, "on_icon_"

    invoke-virtual {p1}, Lcom/htc/launcher/OperatorTab;->getMinorNb()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->encodeResourceEntryName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getOverlayIconResId(Lcom/htc/launcher/OperatorTab;)I
    .locals 3
    .parameter "tab"

    .prologue
    .line 725
    const-string v0, "overlay_icon_"

    invoke-virtual {p1}, Lcom/htc/launcher/OperatorTab;->getMinorNb()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->encodeResourceEntryName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "quantity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 890
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!i"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 894
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "quantity"
    .parameter "formatArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 881
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!j"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 885
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"
    .parameter "quantity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 899
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!h"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 903
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 5
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const v4, 0xf4240

    .line 609
    const/4 v1, 0x0

    .line 610
    .local v1, ret:Ljava/lang/String;
    const/4 v0, -0x1

    .line 611
    .local v0, minorNb:I
    div-int v2, p1, v4

    const/16 v3, -0x1f1

    if-ne v2, v3, :cond_0

    .line 613
    rem-int v2, p1, v4

    div-int/lit16 v0, v2, 0x3e8

    .line 615
    rem-int/lit16 v2, p1, 0x3e8

    packed-switch v2, :pswitch_data_0

    .line 630
    :cond_0
    :goto_0
    const-string v2, "OperatorTabManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OperatorTabResources.getResourceEntryName: resid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minorNb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    if-eqz v1, :cond_1

    .line 638
    .end local v1           #ret:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 617
    .restart local v1       #ret:Ljava/lang/String;
    :pswitch_0
    const-string v2, "title_"

    invoke-direct {p0, v2, v0}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->encodeResourceEntryName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 618
    goto :goto_0

    .line 620
    :pswitch_1
    const-string v2, "rest_icon_"

    invoke-direct {p0, v2, v0}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->encodeResourceEntryName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 621
    goto :goto_0

    .line 623
    :pswitch_2
    const-string v2, "on_icon_"

    invoke-direct {p0, v2, v0}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->encodeResourceEntryName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 624
    goto :goto_0

    .line 626
    :pswitch_3
    const-string v2, "overlay_icon_"

    invoke-direct {p0, v2, v0}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->encodeResourceEntryName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 635
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 636
    iget-object v2, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 638
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 615
    nop

    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 5
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const v4, 0xf4240

    .line 515
    const/4 v1, 0x0

    .line 516
    .local v1, ret:Ljava/lang/String;
    const/4 v0, -0x1

    .line 517
    .local v0, minorNb:I
    div-int v2, p1, v4

    const/16 v3, -0x1f1

    if-ne v2, v3, :cond_0

    .line 519
    rem-int v2, p1, v4

    div-int/lit16 v0, v2, 0x3e8

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 537
    :cond_0
    const-string v2, "OperatorTabManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OperatorTabResources.getResourceName: resid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minorNb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    if-eqz v1, :cond_1

    .line 545
    .end local v1           #ret:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 542
    .restart local v1       #ret:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 543
    iget-object v2, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 545
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 5
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const v4, 0xf4240

    .line 643
    const/4 v1, 0x0

    .line 644
    .local v1, ret:Ljava/lang/String;
    const/4 v0, -0x1

    .line 645
    .local v0, minorNb:I
    div-int v2, p1, v4

    const/16 v3, -0x1f1

    if-ne v2, v3, :cond_0

    .line 647
    rem-int v2, p1, v4

    div-int/lit16 v0, v2, 0x3e8

    .line 649
    iget-object v2, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 651
    :cond_0
    const-string v2, "OperatorTabManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OperatorTabResources.getResourcePackageName: resid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minorNb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    if-eqz v1, :cond_1

    .line 659
    .end local v1           #ret:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 656
    .restart local v1       #ret:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 657
    iget-object v2, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 659
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 5
    .parameter "resid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const v4, 0xf4240

    .line 664
    const/4 v1, 0x0

    .line 665
    .local v1, ret:Ljava/lang/String;
    const/4 v0, -0x1

    .line 666
    .local v0, minorNb:I
    div-int v2, p1, v4

    const/16 v3, -0x1f1

    if-ne v2, v3, :cond_0

    .line 668
    rem-int v2, p1, v4

    div-int/lit16 v0, v2, 0x3e8

    .line 670
    rem-int/lit16 v2, p1, 0x3e8

    packed-switch v2, :pswitch_data_0

    .line 685
    :cond_0
    :goto_0
    const-string v2, "OperatorTabManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OperatorTabResources.getResourceTypeName: resid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minorNb="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    if-eqz v1, :cond_1

    .line 693
    .end local v1           #ret:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 672
    .restart local v1       #ret:Ljava/lang/String;
    :pswitch_0
    const-string v1, "string"

    .line 673
    goto :goto_0

    .line 675
    :pswitch_1
    const-string v1, "drawable"

    .line 676
    goto :goto_0

    .line 678
    :pswitch_2
    const-string v1, "drawable"

    .line 679
    goto :goto_0

    .line 681
    :pswitch_3
    const-string v1, "drawable"

    goto :goto_0

    .line 690
    :cond_1
    iget-object v2, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 691
    iget-object v2, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 693
    :cond_2
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 670
    nop

    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRestIconResId(Lcom/htc/launcher/OperatorTab;)I
    .locals 3
    .parameter "tab"

    .prologue
    .line 717
    const-string v0, "rest_icon_"

    invoke-virtual {p1}, Lcom/htc/launcher/OperatorTab;->getMinorNb()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->encodeResourceEntryName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "drawable"

    iget-object v2, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->doGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 462
    .end local v0           #ret:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 459
    .restart local v0       #ret:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 462
    :cond_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "formatArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 908
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!g"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 912
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 917
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!f"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 921
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->doGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 475
    .end local v0           #ret:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 472
    .restart local v0       #ret:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 475
    :cond_1
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"
    .parameter "def"

    .prologue
    .line 926
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!e"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 930
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 935
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!d"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 939
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 2
    .parameter "id"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 944
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!c"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 950
    :goto_0
    return-void

    .line 949
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 2
    .parameter "name"
    .parameter "outValue"
    .parameter "resolveRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 954
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!b"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    .line 960
    :goto_0
    return-void

    .line 959
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    goto :goto_0
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 964
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!a"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 968
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    goto :goto_0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 2
    .parameter "set"
    .parameter "attrs"

    .prologue
    .line 973
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!9"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 977
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 982
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!8"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 986
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 9
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const v8, 0xf4240

    .line 347
    const/4 v3, 0x0

    .line 348
    .local v3, path:Ljava/io/File;
    const/4 v1, -0x1

    .line 349
    .local v1, minorNb:I
    div-int v6, p1, v8

    const/16 v7, -0x1f1

    if-ne v6, v7, :cond_1

    .line 352
    rem-int v6, p1, v8

    div-int/lit16 v1, v6, 0x3e8

    .line 353
    iget-object v6, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->operatorTabMap:Ljava/util/Map;
    invoke-static {v6}, Lcom/htc/launcher/OperatorTabManager;->access$100(Lcom/htc/launcher/OperatorTabManager;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/launcher/OperatorTabCore;

    .line 354
    .local v2, operatorTab:Lcom/htc/launcher/OperatorTabCore;
    if-eqz v2, :cond_0

    .line 356
    rem-int/lit16 v6, p1, 0x3e8

    packed-switch v6, :pswitch_data_0

    .line 369
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 370
    const-string v6, "OperatorTabManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openRawResource: return null. id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .end local v2           #operatorTab:Lcom/htc/launcher/OperatorTabCore;
    :goto_1
    return-object v5

    .line 358
    .restart local v2       #operatorTab:Lcom/htc/launcher/OperatorTabCore;
    :pswitch_0
    invoke-virtual {v2}, Lcom/htc/launcher/OperatorTabCore;->getRestIconPath()Ljava/io/File;

    move-result-object v3

    .line 359
    goto :goto_0

    .line 361
    :pswitch_1
    invoke-virtual {v2}, Lcom/htc/launcher/OperatorTabCore;->getOnIconPath()Ljava/io/File;

    move-result-object v3

    .line 362
    goto :goto_0

    .line 364
    :pswitch_2
    invoke-virtual {v2}, Lcom/htc/launcher/OperatorTabCore;->getOverlayIconPath()Ljava/io/File;

    move-result-object v3

    goto :goto_0

    .line 374
    .end local v2           #operatorTab:Lcom/htc/launcher/OperatorTabCore;
    :cond_1
    const-string v6, "OperatorTabManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OperatorTabResources.openRawResource: id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " path(abs)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " minorNb="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    if-eqz v3, :cond_3

    .line 378
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .local v4, ret:Ljava/io/InputStream;
    move-object v5, v4

    .line 379
    goto :goto_1

    .line 374
    .end local v4           #ret:Ljava/io/InputStream;
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, e:Ljava/io/FileNotFoundException;
    new-instance v5, Landroid/content/res/Resources$NotFoundException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 388
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :cond_3
    iget-object v5, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 389
    iget-object v5, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v5}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_1

    .line 391
    :cond_4
    invoke-super {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    goto :goto_1

    .line 356
    :pswitch_data_0
    .packed-switch -0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 991
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!7"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    .line 995
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 1000
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!5"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 1004
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1009
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!4"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1015
    :goto_0
    return-void

    .line 1014
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1019
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!3"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 1025
    :goto_0
    return-void

    .line 1024
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .parameter "ci"

    .prologue
    .line 1029
    const-string v0, "OperatorTabManager"

    const-string v1, "OperatorTabResources.XXX: ERROR!2"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 1035
    :goto_0
    return-void

    .line 1034
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V

    goto :goto_0
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 698
    const-string v0, "OperatorTabManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OperatorTabResources.updateConfiguration: ctx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 701
    const-string v0, "OperatorTabManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OperatorTabResources.updateConfiguration: arg0(conf)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arg1(dispMetrics)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/htc/launcher/OperatorTabManager$OperatorTabResources;->this$0:Lcom/htc/launcher/OperatorTabManager;

    #getter for: Lcom/htc/launcher/OperatorTabManager;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/launcher/OperatorTabManager;->access$200(Lcom/htc/launcher/OperatorTabManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 709
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 710
    return-void
.end method
