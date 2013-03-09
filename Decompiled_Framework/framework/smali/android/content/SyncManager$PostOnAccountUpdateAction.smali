.class public abstract Landroid/content/SyncManager$PostOnAccountUpdateAction;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "PostOnAccountUpdateAction"
.end annotation


# instance fields
.field public aAccount:Landroid/accounts/Account;

.field public aAuthority:Ljava/lang/String;

.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method public constructor <init>(Landroid/content/SyncManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/content/SyncManager$PostOnAccountUpdateAction;->this$0:Landroid/content/SyncManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/SyncManager$PostOnAccountUpdateAction;->aAccount:Landroid/accounts/Account;

    iput-object v0, p0, Landroid/content/SyncManager$PostOnAccountUpdateAction;->aAuthority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    return-void
.end method
