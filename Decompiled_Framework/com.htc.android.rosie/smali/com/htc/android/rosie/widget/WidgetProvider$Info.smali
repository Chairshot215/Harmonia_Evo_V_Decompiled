.class public final Lcom/htc/android/rosie/widget/WidgetProvider$Info;
.super Ljava/lang/Object;
.source "WidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/widget/WidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Info"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    }
.end annotation


# instance fields
.field public final category:Ljava/lang/String;

.field public final icon:Landroid/graphics/drawable/Drawable;

.field public final label:Ljava/lang/CharSequence;

.field private final mStyles:[Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

.field public final provider:Landroid/content/ComponentName;

.field public final version:Ljava/lang/String;

.field public final versionCode:I


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;[Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->versionCode:I

    iput-object p2, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->version:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->provider:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->label:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p6, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->mStyles:[Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    iput-object p7, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->category:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStyles()[Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;
    .locals 1

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->mStyles:[Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "widget provider: label="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->label:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->mStyles:[Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->mStyles:[Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    array-length v5, v5

    if-lez v5, :cond_1

    const-string v5, "\n[\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/htc/android/rosie/widget/WidgetProvider$Info;->mStyles:[Lcom/htc/android/rosie/widget/WidgetProvider$Info$Style;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
