.class public Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;
.super Ljava/lang/Object;
.source "MmsBaseListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsBaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryArgs"
.end annotation


# instance fields
.field public cookie:Ljava/lang/Object;

.field public mainQuery:Z

.field public orderBy:Ljava/lang/String;

.field public projection:[Ljava/lang/String;

.field public selection:Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/MmsBaseListActivity;

.field public token:I

.field public uri:Landroid/net/Uri;


# direct methods
.method protected constructor <init>(Lcom/android/mms/ui/MmsBaseListActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->this$0:Lcom/android/mms/ui/MmsBaseListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->uri:Landroid/net/Uri;

    .line 249
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->token:I

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsBaseListActivity$QueryArgs;->mainQuery:Z

    return-void
.end method
