.class Lcom/google/android/finsky/layout/BadgeRow$1;
.super Ljava/lang/Object;
.source "BadgeRow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/BadgeRow;->setPrimaryBadge(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/DfeToc;ILjava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/BadgeRow;

.field final synthetic val$backendId:I

.field final synthetic val$badge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

.field final synthetic val$badgeTitle:Ljava/lang/String;

.field final synthetic val$dfeToc:Lcom/google/android/finsky/api/model/DfeToc;

.field final synthetic val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field final synthetic val$referrerUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/BadgeRow;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/finsky/layout/BadgeRow$1;->this$0:Lcom/google/android/finsky/layout/BadgeRow;

    iput-object p2, p0, Lcom/google/android/finsky/layout/BadgeRow$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iput-object p3, p0, Lcom/google/android/finsky/layout/BadgeRow$1;->val$badge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    iput-object p4, p0, Lcom/google/android/finsky/layout/BadgeRow$1;->val$badgeTitle:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/finsky/layout/BadgeRow$1;->val$backendId:I

    iput-object p6, p0, Lcom/google/android/finsky/layout/BadgeRow$1;->val$referrerUrl:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/finsky/layout/BadgeRow$1;->val$dfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/finsky/layout/BadgeRow$1;->val$navigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/layout/BadgeRow$1;->val$badge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/BadgeRow$1;->val$badgeTitle:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/finsky/layout/BadgeRow$1;->val$backendId:I

    iget-object v4, p0, Lcom/google/android/finsky/layout/BadgeRow$1;->val$referrerUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/finsky/layout/BadgeRow$1;->val$dfeToc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 64
    return-void
.end method
