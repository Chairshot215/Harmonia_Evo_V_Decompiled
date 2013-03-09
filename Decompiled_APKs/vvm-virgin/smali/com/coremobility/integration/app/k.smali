.class public interface abstract Lcom/coremobility/integration/app/k;
.super Ljava/lang/Object;


# static fields
.field public static final A:Landroid/net/Uri;

.field public static final B:Landroid/net/Uri;

.field public static final C:Landroid/net/Uri;

.field public static final D:Landroid/net/Uri;

.field public static final E:Landroid/net/Uri;

.field public static final k:Landroid/net/Uri;

.field public static final l:Landroid/net/Uri;

.field public static final m:Landroid/net/Uri;

.field public static final n:Landroid/net/Uri;

.field public static final o:Landroid/net/Uri;

.field public static final p:Landroid/net/Uri;

.field public static final q:Landroid/net/Uri;

.field public static final r:Landroid/net/Uri;

.field public static final s:Landroid/net/Uri;

.field public static final t:Landroid/net/Uri;

.field public static final u:Landroid/net/Uri;

.field public static final v:Landroid/net/Uri;

.field public static final w:Landroid/net/Uri;

.field public static final x:Landroid/net/Uri;

.field public static final y:Landroid/net/Uri;

.field public static final z:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.coremobility.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->k:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->l:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_no_delete_folder"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->m:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_mime"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->n:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_mime_inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->o:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_mime_guid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->p:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/changes"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->q:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_mime_join"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->r:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_delete_bulk_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->s:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_delete_bulk_query"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->t:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_empty_directory"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->u:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_restore_to_inbx"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->v:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->w:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_external"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->x:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_mime_external"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->y:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_mime_guid_external"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->z:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/changes_external"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->A:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_mime_join_external"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->B:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_delete_bulk_list_external"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->C:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_delete_bulk_query_external"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->D:Landroid/net/Uri;

    const-string v0, "content://com.coremobility.provider/vnotes_sdcard_mounted_external"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coremobility/integration/app/k;->E:Landroid/net/Uri;

    return-void
.end method
