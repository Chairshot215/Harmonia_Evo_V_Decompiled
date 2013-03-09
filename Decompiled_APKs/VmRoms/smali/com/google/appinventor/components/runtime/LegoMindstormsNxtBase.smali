.class public Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final ERROR_MESSAGES:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOY_ROBOT:I = 0x804


# instance fields
.field protected bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

.field protected final logTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pending communication transaction in progress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Specified mailbox queue is empty"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No more handles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No space"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No more files"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "End of file expected"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "End of file"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not a linear file"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File not found"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Handle already closed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No linear space"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Undefined error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File is busy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No write buffers"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Append not possible"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File is full"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "File exists"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Module not found"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Out of boundary"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x92

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal file name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal handle"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xbd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Request failed (i.e. specified file not found)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown command opcode"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Insane packet"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Data contains out-of-range values"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Communication bus error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xde

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No free memory in communication buffer"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xdf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Specified channel/connection is not valid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Specified channel/connection not configured or busy"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "No active program"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal size specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Illegal mailbox queue ID specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Attempted to access invalid field of a structure"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bad input or output specified"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xfb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Insufficient memory available"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Bad arguments"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    return-void
.end method

.method private handleError(Ljava/lang/String;I)V
    .locals 6

    const/16 v5, 0x194

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-gez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->ERROR_MESSAGES:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-virtual {v1, p0, p1, v5, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    new-array v1, v2, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error code 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit16 v3, p2, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p0, p1, v5, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private receiveReturnPackage(Ljava/lang/String;)[B
    .locals 4

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p1, v2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v1, v0

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUWORDValueFromBytes([BI)I

    move-result v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->read(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x193

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    new-array v0, v3, [B

    goto :goto_0
.end method


# virtual methods
.method public BluetoothClient()Lcom/google/appinventor/components/runtime/BluetoothClient;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The BluetoothClient component that should be used for communication."
        userVisible = false
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    return-object v0
.end method

.method public BluetoothClient(Lcom/google/appinventor/components/runtime/BluetoothClient;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "BluetoothClient"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->removeBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->detachComponent(Lcom/google/appinventor/components/runtime/Component;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    const/16 v1, 0x804

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/google/appinventor/components/runtime/BluetoothClient;->attachComponent(Lcom/google/appinventor/components/runtime/Component;Ljava/util/Set;)Z

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->addBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V

    :cond_1
    return-void
.end method

.method public final Initialize()V
    .locals 0

    return-void
.end method

.method public afterConnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0

    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 0

    return-void
.end method

.method protected final checkBluetooth(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x191

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v1, 0x192

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final convertMotorPortLetterToNumber(C)I
    .locals 3

    const/16 v0, 0x41

    if-eq p1, v0, :cond_0

    const/16 v0, 0x61

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x62

    if-ne p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/16 v0, 0x43

    if-eq p1, v0, :cond_4

    const/16 v0, 0x63

    if-ne p1, v0, :cond_5

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal motor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final convertMotorPortLetterToNumber(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->convertMotorPortLetterToNumber(C)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal motor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final convertSensorPortLetterToNumber(C)I
    .locals 3

    const/16 v0, 0x31

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x32

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x33

    if-ne p1, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/16 v0, 0x34

    if-ne p1, v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal sensor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final convertSensorPortLetterToNumber(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->convertSensorPortLetterToNumber(C)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal sensor port letter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final copyBooleanValueToBytes(Z[BI)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    aput-byte v0, p2, p3

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final copySBYTEValueToBytes(I[BI)V
    .locals 1

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    return-void
.end method

.method protected final copySLONGValueToBytes(I[BI)V
    .locals 3

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    shr-int/lit8 v0, p1, 0x8

    add-int/lit8 v1, p3, 0x1

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p3, 0x2

    and-int/lit16 v2, v0, 0xff

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p3, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    return-void
.end method

.method protected final copySWORDValueToBytes(I[BI)V
    .locals 2

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    shr-int/lit8 v0, p1, 0x8

    add-int/lit8 v1, p3, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    return-void
.end method

.method protected final copyStringValueToBytes(Ljava/lang/String;[BII)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p4, :cond_0

    invoke-virtual {p1, v5, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    :try_start_0
    const-string v1, "ISO-8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    array-length v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v5, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnsupportedEncodingException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method protected final copyUBYTEValueToBytes(I[BI)V
    .locals 1

    int-to-byte v0, p1

    aput-byte v0, p2, p3

    return-void
.end method

.method protected final copyULONGValueToBytes(J[BI)V
    .locals 8

    const/16 v7, 0x8

    const-wide/16 v5, 0xff

    and-long v0, p1, v5

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, p4

    shr-long v0, p1, v7

    add-int/lit8 v2, p4, 0x1

    and-long v3, v0, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    shr-long/2addr v0, v7

    add-int/lit8 v2, p4, 0x2

    and-long v3, v0, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p3, v2

    shr-long/2addr v0, v7

    add-int/lit8 v2, p4, 0x3

    and-long/2addr v0, v5

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, v2

    return-void
.end method

.method protected final copyUWORDValueToBytes(I[BI)V
    .locals 2

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    shr-int/lit8 v0, p1, 0x8

    add-int/lit8 v1, p3, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    return-void
.end method

.method protected final evaluateStatus(Ljava/lang/String;[BB)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getStatus(Ljava/lang/String;[BB)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->handleError(Ljava/lang/String;I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getBooleanValueFromBytes([BI)Z
    .locals 1

    aget-byte v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getInputValues(Ljava/lang/String;I)[B
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    const/4 v1, 0x7

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    aget-byte v0, v0, v2

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, v1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unexpected return package length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 16)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final getSBYTEValueFromBytes([BI)I
    .locals 1

    aget-byte v0, p1, p2

    return v0
.end method

.method protected final getSLONGValueFromBytes([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method protected final getSWORDValueFromBytes([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected final getStatus(Ljava/lang/String;[BB)I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    array-length v0, p2

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    aget-byte v0, p2, v3

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unexpected return package byte 0: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p2, v3

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 0x02)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    aget-byte v0, p2, v4

    if-eq v0, p3, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unexpected return package byte 1: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-byte v2, p2, v4

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p3, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, p2, v5}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUBYTEValueFromBytes([BI)I

    move-result v0

    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unexpected return package length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected >= 3)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected final getStringValueFromBytes([BI)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    move v1, p2

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-byte v2, p1, v1

    if-nez v2, :cond_1

    sub-int v0, v1, p2

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getStringValueFromBytes([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected final getStringValueFromBytes([BII)Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p1, p2, p3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedEncodingException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    goto :goto_0
.end method

.method protected final getUBYTEValueFromBytes([BI)I
    .locals 1

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected final getULONGValueFromBytes([BI)J
    .locals 7

    const-wide/16 v5, 0xff

    aget-byte v0, p1, p2

    int-to-long v0, v0

    and-long/2addr v0, v5

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected final getUWORDValueFromBytes([BI)I
    .locals 2

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method protected final lsGetStatus(Ljava/lang/String;I)I
    .locals 5

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    new-array v0, v3, [B

    aput-byte v4, v0, v4

    const/16 v1, 0xe

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    aget-byte v0, v0, v2

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1, v3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->getUBYTEValueFromBytes([BI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unexpected return package length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 4)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method protected final lsRead(Ljava/lang/String;I)[B
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    const/16 v1, 0x10

    aput-byte v1, v0, v2

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    aget-byte v0, v0, v2

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, v1

    const/16 v2, 0x14

    if-ne v0, v2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": unexpected return package length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected 20)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final lsWrite(Ljava/lang/String;I[BI)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    array-length v0, p3

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length must be <= 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p3

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [B

    aput-byte v3, v0, v3

    const/16 v1, 0xf

    aput-byte v1, v0, v4

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    array-length v1, p3

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 v1, 0x4

    invoke-virtual {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 v1, 0x5

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B

    move-result-object v1

    aget-byte v0, v0, v4

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->evaluateStatus(Ljava/lang/String;[BB)Z

    return-void
.end method

.method public onDelete()V
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->removeBluetoothConnectionListener(Lcom/google/appinventor/components/runtime/BluetoothConnectionListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->detachComponent(Lcom/google/appinventor/components/runtime/Component;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    :cond_0
    return-void
.end method

.method protected final resetInputScaledValue(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    return-void
.end method

.method protected final sanitizePower(I)I
    .locals 5

    const/16 v4, 0x64

    const/16 v3, -0x64

    if-ge p1, v3, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "power "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, using -100."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_0
    if-le v0, v4, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "power "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is invalid, using 100."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    :cond_0
    return v0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method protected final sanitizeTurnRatio(I)I
    .locals 5

    const/16 v4, 0x64

    const/16 v3, -0x64

    if-ge p1, v3, :cond_1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnRatio "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid, using -100."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    :goto_0
    if-le v0, v4, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->logTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turnRatio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is invalid, using 100."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    :cond_0
    return v0

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method protected final sendCommand(Ljava/lang/String;[B)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUWORDValueToBytes(I[BI)V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v1, p1, v0}, Lcom/google/appinventor/components/runtime/BluetoothClient;->write(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v0, p1, p2}, Lcom/google/appinventor/components/runtime/BluetoothClient;->write(Ljava/lang/String;[B)V

    return-void
.end method

.method protected final sendCommandAndReceiveReturnPackage(Ljava/lang/String;[B)[B
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->receiveReturnPackage(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final setInputMode(Ljava/lang/String;III)V
    .locals 4

    const/4 v3, 0x5

    new-array v0, v3, [B

    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aput-byte v3, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 v1, 0x3

    invoke-virtual {p0, p3, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 v1, 0x4

    invoke-virtual {p0, p4, v0, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    return-void
.end method

.method protected final setOutputState(Ljava/lang/String;IIIIIIJ)V
    .locals 5

    const/4 v4, 0x4

    invoke-virtual {p0, p3}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sanitizePower(I)I

    move-result v0

    const/16 v1, 0xc

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    aput-byte v4, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0, p2, v1, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copySBYTEValueToBytes(I[BI)V

    invoke-virtual {p0, p4, v1, v4}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 v0, 0x5

    invoke-virtual {p0, p5, v1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/4 v0, 0x6

    invoke-virtual {p0, p6, v1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copySBYTEValueToBytes(I[BI)V

    const/4 v0, 0x7

    invoke-virtual {p0, p7, v1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyUBYTEValueToBytes(I[BI)V

    const/16 v0, 0x8

    invoke-virtual {p0, p8, p9, v1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->copyULONGValueToBytes(J[BI)V

    invoke-virtual {p0, p1, v1}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;->sendCommand(Ljava/lang/String;[B)V

    return-void
.end method
