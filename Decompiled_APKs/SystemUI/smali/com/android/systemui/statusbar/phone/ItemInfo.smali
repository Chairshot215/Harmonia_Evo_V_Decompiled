.class public Lcom/android/systemui/statusbar/phone/ItemInfo;
.super Ljava/lang/Object;
.source "ItemInfo.java"


# instance fields
.field private Icon:Landroid/graphics/drawable/Drawable;

.field private Intent:Landroid/content/Intent;

.field private PKGname:Ljava/lang/String;

.field private Title:Ljava/lang/String;

.field private Where:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->PKGname:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Where:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Title:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Intent:Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->PKGname:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Where:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Title:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Icon:Landroid/graphics/drawable/Drawable;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPkgname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->PKGname:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Title:Ljava/lang/String;

    return-object v0
.end method

.method public getWhere()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Where:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Intent:Landroid/content/Intent;

    return-void
.end method

.method public setPKGname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->PKGname:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Title:Ljava/lang/String;

    return-void
.end method

.method public setWhere(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ItemInfo;->Where:Ljava/lang/String;

    return-void
.end method
