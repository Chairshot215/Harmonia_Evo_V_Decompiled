.class public Lgnu/kawa/slib/srfi69;
.super Lgnu/expr/ModuleBody;
.source "srfi69.scm"


# static fields
.field public static final $instance:Lgnu/kawa/slib/srfi69;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/mapping/SimpleSymbol;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit12:Lgnu/mapping/SimpleSymbol;

.field static final Lit13:Lgnu/mapping/SimpleSymbol;

.field static final Lit14:Lgnu/mapping/SimpleSymbol;

.field static final Lit15:Lgnu/mapping/SimpleSymbol;

.field static final Lit16:Lgnu/mapping/SimpleSymbol;

.field static final Lit17:Lgnu/mapping/SimpleSymbol;

.field static final Lit18:Lgnu/mapping/SimpleSymbol;

.field static final Lit19:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final alist$Mn$Grhash$Mntable:Lgnu/expr/ModuleMethod;

.field public static final hash:Lgnu/expr/ModuleMethod;

.field public static final hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mn$Gralist:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mncopy:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mndelete$Ex:Lgnu/mapping/Location;

.field public static final hash$Mntable$Mnequivalence$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnexists$Qu:Lgnu/mapping/Location;

.field public static final hash$Mntable$Mnfold:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnhash$Mnfunction:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnkeys:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnmerge$Ex:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnref:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnref$Sldefault:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnset$Ex:Lgnu/mapping/Location;

.field public static final hash$Mntable$Mnsize:Lgnu/mapping/Location;

.field public static final hash$Mntable$Mnupdate$Ex:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnupdate$Ex$Sldefault:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnvalues:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Mnwalk:Lgnu/expr/ModuleMethod;

.field public static final hash$Mntable$Qu:Lgnu/mapping/Location;

.field static final lambda$Fn1:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn2:Lgnu/expr/ModuleMethod;

.field static final lambda$Fn3:Lgnu/expr/ModuleMethod;

.field public static final make$Mnhash$Mntable:Lgnu/expr/ModuleMethod;

.field public static final string$Mnci$Mnhash:Lgnu/expr/ModuleMethod;

.field public static final string$Mnhash:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x2002

    const/4 v7, 0x0

    const/16 v6, 0x3003

    const/16 v4, 0x2001

    const/16 v5, 0x1001

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-values"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit19:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-keys"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit18:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-merge!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit17:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-copy"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit16:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table->alist"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit15:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "alist->hash-table"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit14:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-fold"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit13:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-walk"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit12:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-update!/default"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-update!"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-ref/default"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-ref"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-hash-table"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-hash-function"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-table-equivalence-function"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash-by-identity"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "hash"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-ci-hash"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit2:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "string-hash"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit1:Lgnu/mapping/SimpleSymbol;

    const/16 v0, 0x40

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi69;->Lit0:Lgnu/math/IntNum;

    new-instance v0, Lgnu/kawa/slib/srfi69;

    invoke-direct {v0}, Lgnu/kawa/slib/srfi69;-><init>()V

    sput-object v0, Lgnu/kawa/slib/srfi69;->$instance:Lgnu/kawa/slib/srfi69;

    .line 38
    const-string v0, "kawa.lib.rnrs.hashtables"

    const-string v1, "hashtable$Qu"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Qu:Lgnu/mapping/Location;

    const-string v0, "kawa.lib.rnrs.hashtables"

    const-string v1, "hashtable$Mnsize"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnsize:Lgnu/mapping/Location;

    const-string v0, "kawa.lib.rnrs.hashtables"

    const-string v1, "hashtable$Mnset$Ex"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnset$Ex:Lgnu/mapping/Location;

    const-string v0, "kawa.lib.rnrs.hashtables"

    const-string v1, "hashtable$Mndelete$Ex"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mndelete$Ex:Lgnu/mapping/Location;

    const-string v0, "kawa.lib.rnrs.hashtables"

    const-string v1, "hashtable$Mncontains$Qu"

    invoke-static {v0, v1}, Lgnu/kawa/reflect/StaticFieldLocation;->make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;

    move-result-object v0

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnexists$Qu:Lgnu/mapping/Location;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/kawa/slib/srfi69;->$instance:Lgnu/kawa/slib/srfi69;

    const/4 v2, 0x1

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit1:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->string$Mnhash:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit2:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->string$Mnci$Mnhash:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnequivalence$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnhash$Mnfunction:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xb

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit7:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x3000

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->make$Mnhash$Mntable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xf

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit8:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x3002

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnref:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x11

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnref$Sldefault:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x12

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x4003

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnupdate$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x14

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit11:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x4004

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnupdate$Ex$Sldefault:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x15

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit12:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnwalk:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x16

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit13:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnfold:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2, v7, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "source-location"

    const-string v3, "srfi69.scm:166"

    invoke-virtual {v0, v2, v3}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x18

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit14:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x4001

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->alist$Mn$Grhash$Mntable:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1c

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit15:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mn$Gralist:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1d

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit16:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mncopy:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1e

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit17:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v8}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnmerge$Ex:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2, v7, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "source-location"

    const-string v3, "srfi69.scm:183"

    invoke-virtual {v0, v2, v3}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x20

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit18:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnkeys:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2, v7, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    const-string v2, "source-location"

    const-string v3, "srfi69.scm:186"

    invoke-virtual {v0, v2, v3}, Lgnu/mapping/PropertySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x22

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit19:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lgnu/kawa/slib/srfi69;->hash$Mntable$Mnvalues:Lgnu/expr/ModuleMethod;

    sget-object v0, Lgnu/kawa/slib/srfi69;->$instance:Lgnu/kawa/slib/srfi69;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static alist$To$HashTable(Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1

    sget-object v0, Lkawa/standard/Scheme;->isEqual:Lgnu/kawa/functions/IsEqual;

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    return-object v0
.end method

.method public static alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1

    invoke-static {p1}, Lgnu/kawa/slib/srfi69;->appropriateHashFunctionFor(Ljava/lang/Object;)Lgnu/mapping/Procedure;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    return-object v0
.end method

.method public static alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v3, Lgnu/kawa/slib/srfi69;->Lit0:Lgnu/math/IntNum;

    aput-object v3, v2, v1

    :try_start_0
    move-object v0, p0

    check-cast v0, Lgnu/lists/LList;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v2}, Lkawa/lib/numbers;->max([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v1

    return-object v1

    .line 161
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "length"

    invoke-direct {v2, v1, v3, v4, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2
.end method

.method public static alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 8
    .parameter "alist"
    .parameter "comparison"
    .parameter "hash"
    .parameter "size"

    .prologue
    .line 156
    :try_start_0
    check-cast p1, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1
    :try_start_1
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .end local p2
    :try_start_2
    move-object v0, p3

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    invoke-static {p1, p2, v4}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v3

    .line 163
    .local v3, hash$Mntable:Lkawa/lib/kawa/hashtable$HashTable;
    move-object v1, p0

    .local v1, arg0:Ljava/lang/Object;
    :goto_0
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v1, v4, :cond_0

    .line 168
    return-object v3

    .line 163
    :cond_0
    :try_start_3
    check-cast v1, Lgnu/lists/Pair;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    .local v1, arg0:Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 165
    .local v2, elem:Ljava/lang/Object;
    sget-object v4, Lkawa/lib/lists;->car:Lgnu/expr/GenericProc;

    .line 166
    invoke-virtual {v4, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgnu/kawa/slib/srfi69;->lambda$Fn1:Lgnu/expr/ModuleMethod;

    sget-object v6, Lkawa/lib/lists;->cdr:Lgnu/expr/GenericProc;

    invoke-virtual {v6, v2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lgnu/kawa/slib/srfi69;->hashTableUpdate$Ex$SlDefault(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    .local v1, arg0:Ljava/lang/Object;
    goto :goto_0

    .line 162
    .end local v1           #arg0:Ljava/lang/Object;
    .end local v2           #elem:Ljava/lang/Object;
    .end local v3           #hash$Mntable:Lkawa/lib/kawa/hashtable$HashTable;
    .restart local p1
    .restart local p2
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "make-hash-table"

    const/4 v7, 0x0

    invoke-direct {v5, v4, v6, v7, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .end local p1
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "make-hash-table"

    const/4 v7, 0x1

    invoke-direct {v5, v4, v6, v7, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .end local p2
    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "make-hash-table"

    const/4 v7, 0x2

    invoke-direct {v5, v4, v6, v7, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 163
    .restart local v1       #arg0:Ljava/lang/Object;
    .restart local v3       #hash$Mntable:Lkawa/lib/kawa/hashtable$HashTable;
    :catch_3
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "arg0"

    const/4 v7, -0x2

    invoke-direct {v5, v4, v6, v7, v1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5
.end method

.method static appropriateHashFunctionFor(Ljava/lang/Object;)Lgnu/mapping/Procedure;
    .locals 4
    .parameter "comparison"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    sget-object v1, Lkawa/standard/Scheme;->isEq:Lgnu/kawa/functions/IsEq;

    if-ne p0, v1, :cond_0

    move v0, v3

    .local v0, x:Z
    :goto_0
    if-eqz v0, :cond_1

    sget-object v1, Lgnu/kawa/slib/srfi69;->hash$Mnby$Mnidentity:Lgnu/expr/ModuleMethod;

    move-object v0, v1

    .local v0, x:Ljava/lang/Object;
    :goto_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_3

    check-cast v0, Lgnu/mapping/Procedure;

    .end local v0           #x:Ljava/lang/Object;
    move-object v1, v0

    .line 87
    :goto_2
    return-object v1

    :cond_0
    move v0, v2

    .line 86
    goto :goto_0

    .local v0, x:Z
    :cond_1
    if-eqz v0, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_1

    .line 88
    .local v0, x:Ljava/lang/Object;
    :cond_3
    sget-object v1, Lkawa/lib/strings;->string$Eq$Qu:Lgnu/expr/ModuleMethod;

    if-ne p0, v1, :cond_4

    move v0, v3

    .local v0, x:Z
    :goto_3
    if-eqz v0, :cond_5

    sget-object v1, Lgnu/kawa/slib/srfi69;->string$Mnhash:Lgnu/expr/ModuleMethod;

    move-object v0, v1

    .line 87
    .local v0, x:Ljava/lang/Object;
    :goto_4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_7

    check-cast v0, Lgnu/mapping/Procedure;

    .end local v0           #x:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_2

    .restart local v0       #x:Ljava/lang/Object;
    :cond_4
    move v0, v2

    .line 88
    goto :goto_3

    .local v0, x:Z
    :cond_5
    if-eqz v0, :cond_6

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_4

    :cond_6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_4

    .line 89
    .local v0, x:Ljava/lang/Object;
    :cond_7
    sget-object v1, Lkawa/lib/rnrs/unicode;->string$Mnci$Eq$Qu:Lgnu/expr/ModuleMethod;

    if-ne p0, v1, :cond_8

    move v0, v3

    .local v0, x:Z
    :goto_5
    if-eqz v0, :cond_9

    sget-object v1, Lgnu/kawa/slib/srfi69;->string$Mnci$Mnhash:Lgnu/expr/ModuleMethod;

    move-object v0, v1

    .line 87
    .local v0, x:Ljava/lang/Object;
    :goto_6
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq v0, v1, :cond_b

    check-cast v0, Lgnu/mapping/Procedure;

    .end local v0           #x:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_2

    .restart local v0       #x:Ljava/lang/Object;
    :cond_8
    move v0, v2

    .line 89
    goto :goto_5

    .local v0, x:Z
    :cond_9
    if-eqz v0, :cond_a

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_6

    :cond_a
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    goto :goto_6

    .line 87
    .local v0, x:Ljava/lang/Object;
    :cond_b
    sget-object v1, Lgnu/kawa/slib/srfi69;->hash:Lgnu/expr/ModuleMethod;

    goto :goto_2
.end method

.method public static hash(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->hash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .locals 2
    .parameter "obj"
    .parameter "bound"

    .prologue
    .line 64
    if-nez p0, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 66
    .local v0, h:I
    :goto_0
    if-nez p1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    return-object v1

    .line 64
    .end local v0           #h:I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    goto :goto_0

    .line 66
    .restart local v0       #h:I
    :cond_1
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_1
.end method

.method public static hashByIdentity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->hashByIdentity(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashByIdentity(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .locals 2
    .parameter "obj"
    .parameter "bound"

    .prologue
    .line 68
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 70
    .local v0, h:I
    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0
.end method

.method public static hashTable$To$Alist(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .locals 1
    .parameter "hash$Mntable"

    .prologue
    .line 170
    invoke-virtual {p0}, Lkawa/lib/kawa/hashtable$HashTable;->toAlist()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableCopy(Lkawa/lib/kawa/hashtable$HashTable;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 2
    .parameter "hash$Mntable"

    .prologue
    .line 173
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lkawa/lib/kawa/hashtable$HashTable;Z)V

    return-object v0
.end method

.method public static hashTableEquivalenceFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;
    .locals 1
    .parameter "hash$Mntable"

    .prologue
    .line 78
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->equivalenceFunction:Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public static hashTableFold(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "hash$Mntable"
    .parameter "proc"
    .parameter "acc"

    .prologue
    .line 151
    invoke-virtual {p0, p1, p2}, Lkawa/lib/kawa/hashtable$HashTable;->fold(Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableHashFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;
    .locals 1
    .parameter "hash$Mntable"

    .prologue
    .line 82
    iget-object v0, p0, Lkawa/lib/kawa/hashtable$HashTable;->hashFunction:Lgnu/mapping/Procedure;

    return-object v0
.end method

.method public static hashTableKeys(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .locals 2
    .parameter "hash$Mntable"

    .prologue
    .line 182
    sget-object v0, Lgnu/kawa/slib/srfi69;->lambda$Fn2:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p0, v0, v1}, Lgnu/kawa/slib/srfi69;->hashTableFold(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableMerge$Ex(Lkawa/lib/kawa/hashtable$HashTable;Lkawa/lib/kawa/hashtable$HashTable;)V
    .locals 0
    .parameter "hash$Mntable1"
    .parameter "hash$Mntable2"

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->putAll(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 180
    return-void
.end method

.method public static hashTableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/srfi69;->hashTableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "hash$Mntable"
    .parameter "key"
    .parameter "default"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    .line 120
    .local v0, node:Lgnu/kawa/util/HashNode;
    if-nez v0, :cond_1

    .line 121
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p2, v1, :cond_0

    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v1, p2}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 122
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "hash-table-ref: no value associated with"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static hashTableRef$SlDefault(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "hash$Mntable"
    .parameter "key"
    .parameter "default"

    .prologue
    .line 125
    invoke-virtual {p0, p1, p2}, Lkawa/lib/kawa/hashtable$HashTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, p1, p2, v0}, Lgnu/kawa/slib/srfi69;->hashTableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static hashTableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter "hash$Mntable"
    .parameter "key"
    .parameter "function"
    .parameter "thunk"

    .prologue
    .line 129
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 132
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    .line 133
    .local v0, node:Lgnu/kawa/util/HashNode;
    if-nez v0, :cond_1

    .line 134
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p3, v1, :cond_0

    .line 135
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    sget-object v2, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v2, p3}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lkawa/lib/rnrs/hashtables;->hashtableSet$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v1, "hash-table-update!: no value exists for key"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 137
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/util/HashNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static hashTableUpdate$Ex$SlDefault(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "hash$Mntable"
    .parameter "key"
    .parameter "function"
    .parameter "default"

    .prologue
    .line 139
    invoke-static {p0}, Lkawa/lib/kawa/hashtable;->hashtableCheckMutable(Lkawa/lib/kawa/hashtable$HashTable;)V

    .line 141
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->getNode(Ljava/lang/Object;)Lgnu/kawa/util/HashNode;

    move-result-object v0

    .line 142
    .local v0, node:Lgnu/kawa/util/HashNode;
    if-nez v0, :cond_0

    .line 143
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    invoke-virtual {v1, p2, p3}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lkawa/lib/rnrs/hashtables;->hashtableSet$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v1, Lkawa/standard/Scheme;->applyToArgs:Lgnu/kawa/functions/ApplyToArgs;

    .line 144
    invoke-virtual {v0}, Lgnu/kawa/util/HashNode;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/kawa/util/HashNode;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static hashTableValues(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;
    .locals 2
    .parameter "hash$Mntable"

    .prologue
    .line 185
    sget-object v0, Lgnu/kawa/slib/srfi69;->lambda$Fn3:Lgnu/expr/ModuleMethod;

    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p0, v0, v1}, Lgnu/kawa/slib/srfi69;->hashTableFold(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hashTableWalk(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;)V
    .locals 0
    .parameter "hash$Mntable"
    .parameter "proc"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Lkawa/lib/kawa/hashtable$HashTable;->walk(Lgnu/mapping/Procedure;)V

    return-void
.end method

.method static lambda1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x"

    .prologue
    .line 166
    return-object p0
.end method

.method static lambda2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 1
    .parameter "key"
    .parameter "val"
    .parameter "acc"

    .prologue
    .line 183
    invoke-static {p0, p2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    return-object v0
.end method

.method static lambda3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;
    .locals 1
    .parameter "key"
    .parameter "val"
    .parameter "acc"

    .prologue
    .line 186
    invoke-static {p1, p2}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static makeHashTable()Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1

    sget-object v0, Lkawa/standard/Scheme;->isEqual:Lgnu/kawa/functions/IsEqual;

    invoke-static {v0}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    return-object v0
.end method

.method public static makeHashTable(Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 2

    invoke-static {p0}, Lgnu/kawa/slib/srfi69;->appropriateHashFunctionFor(Ljava/lang/Object;)Lgnu/mapping/Procedure;

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {p0, v0, v1}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    return-object v0
.end method

.method public static makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1

    const/16 v0, 0x40

    invoke-static {p0, p1, v0}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    return-object v0
.end method

.method public static makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;
    .locals 1
    .parameter "comparison"
    .parameter "hash"
    .parameter "size"

    .prologue
    .line 94
    new-instance v0, Lkawa/lib/kawa/hashtable$HashTable;

    invoke-direct {v0, p0, p1, p2}, Lkawa/lib/kawa/hashtable$HashTable;-><init>(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)V

    return-object v0
.end method

.method public static stringCiHash(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->stringCiHash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static stringCiHash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .locals 2
    .parameter "s"
    .parameter "bound"

    .prologue
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 58
    .local v0, h:I
    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0
.end method

.method public static stringHash(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->stringHash(Ljava/lang/CharSequence;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static stringHash(Ljava/lang/CharSequence;Lgnu/math/IntNum;)Ljava/lang/Object;
    .locals 2
    .parameter "s"
    .parameter "bound"

    .prologue
    .line 48
    invoke-interface {p0}, Ljava/lang/CharSequence;->hashCode()I

    move-result v0

    .line 50
    .local v0, h:I
    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0
.end method

.method static symbolHash(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->symbolHash(Lgnu/mapping/Symbol;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static symbolHash(Lgnu/mapping/Symbol;Lgnu/math/IntNum;)Ljava/lang/Object;
    .locals 2
    .parameter "s"
    .parameter "bound"

    .prologue
    .line 60
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->hashCode()I

    move-result v0

    .line 62
    .local v0, h:I
    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0
.end method

.method static vectorHash(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgnu/kawa/slib/srfi69;->vectorHash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static vectorHash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;
    .locals 2
    .parameter "v"
    .parameter "bound"

    .prologue
    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 74
    .local v0, h:I
    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    invoke-static {v1, p1}, Lgnu/math/IntNum;->modulo(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/IntNum;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 94
    invoke-static {}, Lgnu/kawa/slib/srfi69;->makeHashTable()Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 185
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 48
    :sswitch_0
    :try_start_0
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->stringHash(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 52
    :sswitch_1
    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->stringCiHash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 64
    :sswitch_2
    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 68
    :sswitch_3
    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashByIdentity(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 78
    :sswitch_4
    :try_start_1
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTableEquivalenceFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;

    move-result-object v0

    goto :goto_0

    .line 82
    :sswitch_5
    :try_start_2
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTableHashFunction(Lkawa/lib/kawa/hashtable$HashTable;)Lgnu/mapping/Procedure;

    move-result-object v0

    goto :goto_0

    .line 94
    :sswitch_6
    :try_start_3
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    goto :goto_0

    .line 166
    :sswitch_7
    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->lambda1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 156
    :sswitch_8
    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    goto :goto_0

    .line 170
    :sswitch_9
    :try_start_4
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTable$To$Alist(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 173
    :sswitch_a
    :try_start_5
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTableCopy(Lkawa/lib/kawa/hashtable$HashTable;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    goto :goto_0

    .line 182
    :sswitch_b
    :try_start_6
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTableKeys(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 185
    :sswitch_c
    :try_start_7
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p2}, Lgnu/kawa/slib/srfi69;->hashTableValues(Lkawa/lib/kawa/hashtable$HashTable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "string-hash"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 78
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-equivalence-function"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 82
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-hash-function"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 95
    :catch_3
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "make-hash-table"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 170
    :catch_4
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hash-table->alist"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 173
    :catch_5
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-copy"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 182
    :catch_6
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-keys"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 185
    :catch_7
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-values"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x7 -> :sswitch_3
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0x17 -> :sswitch_7
        0x18 -> :sswitch_8
        0x1c -> :sswitch_9
        0x1d -> :sswitch_a
        0x20 -> :sswitch_b
        0x22 -> :sswitch_c
    .end sparse-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 176
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 48
    :sswitch_0
    :try_start_0
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p3}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    invoke-static {p2, v0}, Lgnu/kawa/slib/srfi69;->stringHash(Ljava/lang/CharSequence;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 52
    :sswitch_1
    :try_start_2
    invoke-static {p3}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    invoke-static {p2, v0}, Lgnu/kawa/slib/srfi69;->stringCiHash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 64
    :sswitch_2
    :try_start_3
    invoke-static {p3}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    invoke-static {p2, v0}, Lgnu/kawa/slib/srfi69;->hash(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 68
    :sswitch_3
    :try_start_4
    invoke-static {p3}, Lgnu/kawa/lispexpr/LangObjType;->coerceIntNum(Ljava/lang/Object;)Lgnu/math/IntNum;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    invoke-static {p2, v0}, Lgnu/kawa/slib/srfi69;->hashByIdentity(Ljava/lang/Object;Lgnu/math/IntNum;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 94
    :sswitch_4
    :try_start_5
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    goto :goto_0

    .line 116
    :sswitch_5
    :try_start_7
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi69;->hashTableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 146
    :sswitch_6
    :try_start_8
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    :try_start_9
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_9
    .catch Ljava/lang/ClassCastException; {:try_start_9 .. :try_end_9} :catch_9

    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi69;->hashTableWalk(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 156
    :sswitch_7
    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    goto :goto_0

    .line 176
    :sswitch_8
    :try_start_a
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_a
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_a} :catch_a

    :try_start_b
    check-cast p3, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_b} :catch_b

    invoke-static {p2, p3}, Lgnu/kawa/slib/srfi69;->hashTableMerge$Ex(Lkawa/lib/kawa/hashtable$HashTable;Lkawa/lib/kawa/hashtable$HashTable;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "string-hash"

    invoke-direct {v1, v0, v2, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "string-hash"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 52
    :catch_2
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "string-ci-hash"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 64
    :catch_3
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hash"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 68
    :catch_4
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hash-by-identity"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 95
    :catch_5
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "make-hash-table"

    invoke-direct {v1, v0, v2, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 96
    :catch_6
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "make-hash-table"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 116
    :catch_7
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-ref"

    invoke-direct {v1, v0, v2, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 146
    :catch_8
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-walk"

    invoke-direct {v1, v0, v2, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 147
    :catch_9
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-walk"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 176
    :catch_a
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-merge!"

    invoke-direct {v1, v0, v2, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 177
    :catch_b
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-merge!"

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x7 -> :sswitch_3
        0xb -> :sswitch_4
        0xf -> :sswitch_5
        0x15 -> :sswitch_6
        0x18 -> :sswitch_7
        0x1e -> :sswitch_8
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    iget v1, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v1, :sswitch_data_0

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    .line 94
    :sswitch_0
    :try_start_0
    check-cast p2, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v0, p4

    check-cast v0, Ljava/lang/Number;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    invoke-static {p2, p3, v1}, Lgnu/kawa/slib/srfi69;->makeHashTable(Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;I)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v1

    goto :goto_0

    .line 116
    :sswitch_1
    :try_start_3
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_3

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->hashTableRef(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 125
    :sswitch_2
    :try_start_4
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_4

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->hashTableRef$SlDefault(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 129
    :sswitch_3
    :try_start_5
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->hashTableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 151
    :sswitch_4
    :try_start_6
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    :try_start_7
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_7} :catch_7

    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->hashTableFold(Lkawa/lib/kawa/hashtable$HashTable;Lgnu/mapping/Procedure;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 156
    :sswitch_5
    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v1

    goto :goto_0

    .line 183
    :sswitch_6
    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->lambda2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    goto :goto_0

    .line 186
    :sswitch_7
    invoke-static {p2, p3, p4}, Lgnu/kawa/slib/srfi69;->lambda3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-hash-table"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 96
    :catch_1
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-hash-table"

    invoke-direct {v2, v1, v3, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 98
    :catch_2
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "make-hash-table"

    const/4 v4, 0x3

    invoke-direct {v2, v1, v3, v4, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 116
    :catch_3
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hash-table-ref"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 125
    :catch_4
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hash-table-ref/default"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 129
    :catch_5
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hash-table-update!"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 151
    :catch_6
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hash-table-fold"

    invoke-direct {v2, v1, v3, v4, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line 152
    :catch_7
    move-exception v1

    new-instance v2, Lgnu/mapping/WrongType;

    const-string v3, "hash-table-fold"

    invoke-direct {v2, v1, v3, v5, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v2

    .line -1
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xf -> :sswitch_1
        0x11 -> :sswitch_2
        0x12 -> :sswitch_3
        0x16 -> :sswitch_4
        0x18 -> :sswitch_5
        0x1f -> :sswitch_6
        0x21 -> :sswitch_7
    .end sparse-switch
.end method

.method public apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 156
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->apply4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 129
    :sswitch_0
    :try_start_0
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2, p3, p4, p5}, Lgnu/kawa/slib/srfi69;->hashTableUpdate$Ex(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 139
    :sswitch_1
    :try_start_1
    check-cast p2, Lkawa/lib/kawa/hashtable$HashTable;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3, p4, p5}, Lgnu/kawa/slib/srfi69;->hashTableUpdate$Ex$SlDefault(Lkawa/lib/kawa/hashtable$HashTable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    .line 156
    :sswitch_2
    invoke-static {p2, p3, p4, p5}, Lgnu/kawa/slib/srfi69;->alist$To$HashTable(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lkawa/lib/kawa/hashtable$HashTable;

    move-result-object v0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-update!"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line 139
    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "hash-table-update!/default"

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x14 -> :sswitch_1
        0x18 -> :sswitch_2
    .end sparse-switch
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 94
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, -0xbffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 48
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 185
    :goto_0
    return v0

    :sswitch_0
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 182
    :sswitch_1
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 173
    :sswitch_2
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 170
    :sswitch_3
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 156
    :sswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 166
    :sswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 94
    :sswitch_6
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 82
    :sswitch_7
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 78
    :sswitch_8
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_6

    move v0, v3

    goto :goto_0

    :cond_6
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 68
    :sswitch_9
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 64
    :sswitch_a
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    .line 52
    :sswitch_b
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    .line 48
    :sswitch_c
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    :cond_7
    move v0, v3

    goto/16 :goto_0

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x3 -> :sswitch_b
        0x5 -> :sswitch_a
        0x7 -> :sswitch_9
        0x9 -> :sswitch_8
        0xa -> :sswitch_7
        0xb -> :sswitch_6
        0x17 -> :sswitch_5
        0x18 -> :sswitch_4
        0x1c -> :sswitch_3
        0x1d -> :sswitch_2
        0x20 -> :sswitch_1
        0x22 -> :sswitch_0
    .end sparse-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, -0xbffff

    const v3, -0xbfffe

    const/4 v2, 0x2

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 176
    :goto_0
    return v0

    :sswitch_0
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 156
    :sswitch_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 146
    :sswitch_2
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/mapping/Procedure;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 116
    :sswitch_3
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 94
    :sswitch_4
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_0

    :cond_5
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/mapping/Procedure;

    if-nez v0, :cond_6

    move v0, v3

    goto :goto_0

    :cond_6
    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 68
    :sswitch_5
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v0

    if-eqz v0, :cond_7

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_0

    .line 64
    :sswitch_6
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v0

    if-eqz v0, :cond_8

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_0

    .line 52
    :sswitch_7
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v0

    if-eqz v0, :cond_9

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v3

    goto/16 :goto_0

    .line 48
    :sswitch_8
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    invoke-static {p3}, Lgnu/math/IntNum;->asIntNumOrNull(Ljava/lang/Object;)Lgnu/math/IntNum;

    move-result-object v0

    if-eqz v0, :cond_b

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v4

    goto/16 :goto_0

    :cond_b
    move v0, v3

    goto/16 :goto_0

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x3 -> :sswitch_7
        0x5 -> :sswitch_6
        0x7 -> :sswitch_5
        0xb -> :sswitch_4
        0xf -> :sswitch_3
        0x15 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1e -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, -0xbfffe

    const v3, -0xbffff

    const/4 v2, 0x3

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 94
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 186
    :goto_0
    return v0

    :sswitch_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 183
    :sswitch_1
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 156
    :sswitch_2
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 151
    :sswitch_3
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/mapping/Procedure;

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 129
    :sswitch_4
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 125
    :sswitch_5
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 116
    :sswitch_6
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 94
    :sswitch_7
    instance-of v0, p2, Lgnu/mapping/Procedure;

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/mapping/Procedure;

    if-nez v0, :cond_6

    move v0, v4

    goto :goto_0

    :cond_6
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p5, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto/16 :goto_0

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_7
        0xf -> :sswitch_6
        0x11 -> :sswitch_5
        0x12 -> :sswitch_4
        0x16 -> :sswitch_3
        0x18 -> :sswitch_2
        0x1f -> :sswitch_1
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, -0xbffff

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 129
    invoke-super/range {p0 .. p6}, Lgnu/expr/ModuleBody;->match4(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 156
    :goto_0
    return v0

    :sswitch_0
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 139
    :sswitch_1
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 129
    :sswitch_2
    instance-of v0, p2, Lkawa/lib/kawa/hashtable$HashTable;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iput-object p2, p6, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p6, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p4, p6, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p5, p6, Lgnu/mapping/CallContext;->value4:Ljava/lang/Object;

    iput-object p1, p6, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p6, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_2
        0x14 -> :sswitch_1
        0x18 -> :sswitch_0
    .end sparse-switch
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 1
    .parameter "$ctx"

    .prologue
    .line 25
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 27
    .local v0, $result:Lgnu/lists/Consumer;
    return-void
.end method
