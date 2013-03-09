.class public Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;
.super Ljava/lang/Object;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/util/ContactsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticatorInfo"
.end annotation


# instance fields
.field public canJoin:Z

.field public canSync:Z

.field public dataSet:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public isReadyOnly:Z

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2736
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2741
    iput-boolean v0, p0, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;->canJoin:Z

    .line 2742
    iput-boolean v0, p0, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;->canSync:Z

    .line 2743
    iput-boolean v0, p0, Lcom/android/htccontacts/util/ContactsUtils$AuthenticatorInfo;->isReadyOnly:Z

    return-void
.end method
