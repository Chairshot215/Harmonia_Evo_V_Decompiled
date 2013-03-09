.class Lcom/android/settings/BatteryBar$MyLayerDrawable$MyClipDrawable;
.super Landroid/graphics/drawable/ClipDrawable;
.source "BatteryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BatteryBar$MyLayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyClipDrawable"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/BatteryBar$MyLayerDrawable;


# direct methods
.method public constructor <init>(Lcom/android/settings/BatteryBar$MyLayerDrawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 0
    .parameter
    .parameter "drawable"
    .parameter "gravity"
    .parameter "orientation"

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable$MyClipDrawable;->this$1:Lcom/android/settings/BatteryBar$MyLayerDrawable;

    .line 209
    invoke-direct {p0, p2, p3, p4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 210
    return-void
.end method


# virtual methods
.method protected onLevelChange(I)Z
    .locals 1
    .parameter "level"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/BatteryBar$MyLayerDrawable$MyClipDrawable;->this$1:Lcom/android/settings/BatteryBar$MyLayerDrawable;

    invoke-virtual {v0, p1}, Lcom/android/settings/BatteryBar$MyLayerDrawable;->bridageOnLevelChange(I)Z

    move-result v0

    return v0
.end method
