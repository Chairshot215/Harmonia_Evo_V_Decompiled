.class public final Lcom/android/systemui/recent/TaskDescription;
.super Ljava/lang/Object;
.source "TaskDescription.java"


# instance fields
.field final description:Ljava/lang/CharSequence;

.field final intent:Landroid/content/Intent;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;

.field private mThumbnail:Landroid/graphics/Bitmap;

.field final packageName:Ljava/lang/String;

.field final persistentTaskId:I

.field final resolveInfo:Landroid/content/pm/ResolveInfo;

.field final taskId:I


# direct methods
.method public constructor <init>(IILandroid/content/pm/ResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/recent/TaskDescription;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p4, p0, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    iput p1, p0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    iput p2, p0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    iput-object p6, p0, Lcom/android/systemui/recent/TaskDescription;->description:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/TaskDescription;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/TaskDescription;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/TaskDescription;->mLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/TaskDescription;->mThumbnail:Landroid/graphics/Bitmap;

    return-void
.end method
