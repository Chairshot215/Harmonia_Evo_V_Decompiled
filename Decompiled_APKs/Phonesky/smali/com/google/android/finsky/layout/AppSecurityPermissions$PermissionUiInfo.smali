.class Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionUiInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;",
        ">;"
    }
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field label:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/layout/AppSecurityPermissions;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "label"
    .parameter "description"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;->label:Ljava/lang/String;

    .line 238
    iput-object p3, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;->description:Ljava/lang/String;

    .line 239
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;->label:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 231
    check-cast p1, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;->compareTo(Lcom/google/android/finsky/layout/AppSecurityPermissions$PermissionUiInfo;)I

    move-result v0

    return v0
.end method
