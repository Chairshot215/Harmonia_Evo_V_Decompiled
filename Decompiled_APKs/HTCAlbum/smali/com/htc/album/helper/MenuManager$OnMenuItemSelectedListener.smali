.class public interface abstract Lcom/htc/album/helper/MenuManager$OnMenuItemSelectedListener;
.super Ljava/lang/Object;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMenuItemSelectedListener"
.end annotation


# static fields
.field public static final FEATURE_EDIT_CROP:I = 0x4

.field public static final FEATURE_EDIT_EFFECT:I = 0x5

.field public static final FEATURE_EDIT_ROTATE_LEFT:I = 0x7

.field public static final FEATURE_EDIT_ROTATE_RIGHT:I = 0x6

.field public static final FEATURE_EDIT_SAVE_AS_2D:I = 0x8

.field public static final FEATURE_PRINT:I = 0x9

.field public static final FEATURE_SET_AS:I = 0x1

.field public static final FEATURE_SHARE_MULTI_MEDIA:I = 0x3

.field public static final FEATURE_SHARE_SINGLE_MEDIA:I = 0x2


# virtual methods
.method public abstract OnMenuItemSelected(IILandroid/content/Intent;)V
.end method

.method public abstract OnMenuItemSelected(ILandroid/content/Intent;Landroid/content/Intent;)V
.end method
